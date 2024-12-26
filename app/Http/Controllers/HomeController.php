<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Square\SquareClient;
use Square\Environment;
use Square\Models\CreatePaymentLinkRequest;
use Square\Models\CheckoutOptions;
use Square\Models\Order;
use Square\Models\OrderLineItem;
use Square\Models\Money;

use \App\Models\Setting;
use App\Models\Ticket;
use \App\Models\Transaction;
use Illuminate\Support\Facades\Mail;

class HomeController extends Controller
{
    protected $client;
    private $games = [];

    public function __construct()
    {
        $setting = Setting::first();

        if ($setting) {
            $this->client = new SquareClient([
                'accessToken' => $setting->square_is_production ? $setting->square_live_access_token : $setting->square_sandbox_access_token,
                'environment' => $setting->square_is_production ? Environment::PRODUCTION : Environment::SANDBOX,
            ]);
        }

        $this->games = [
            (object)[
                'id' => 1,
                'name' => 'Power Ball',
                'price' => $setting->price,
                'image' => asset('build/assets/images/power-ball.png')
            ],
            (object)[
                'id' => 2,
                'name' => 'Mega Millions',
                'price' => $setting->price,
                'image' => asset('build/assets/images/mega-millons.png')
            ]
        ];
    }

    public function welcome(Request $request)
    {
        return view('welcome');
    }

    public function participant(Request $request)
    {
        $setting = Setting::first();

        $data = (object)[];
        $data->games = $this->games;

        return view('participant', compact('data'));
    }

    public function create_payment_link(Request $request)
    {
        $checkoutApi = $this->client->getCheckoutApi();

        try {
            if (!$this->client) {
                return response()->json(['error' => 'Square settings not found'], 500);
            }

            $setting = Setting::first();

            if (!$setting) {
                return response()->json(['error' => 'Square settings not found'], 500);
            }

            $request->validate([
                'getGame' => 'required|array',
                'email' => 'required|email'
            ]);

            $currency = 'USD';
            $games = $request->getGame;
            $email = $request->email;
            $transaction_internal_id = (string) \Illuminate\Support\Str::uuid();

            // ? Set items
            $lines = [];
            $total_quantity_tickets = collect($games)->sum('quantity');
            $total_price = 0;

            $get_ticket = $this->get_ticket((float) $total_quantity_tickets);
            $ticket_index = 0;

            foreach ($games as $key => $game) :
                $find_game = collect($this->games)->filter(function ($item) use ($game) {
                    return $item->id == $game['id'];
                })->first();

                if (!$find_game) :
                    return response()->json(['error' => 'Game not found'], 500);
                endif;

                if ((float) $game['quantity'] < 1) :
                    return response()->json(['error' => 'Quantity not valid'], 500);
                endif;

                $get_price = $find_game->price;
                $get_name = strtoupper($find_game->name);

                $price_money = new Money();
                $price_money->setAmount($get_price * 100);
                $price_money->setCurrency($currency);

                $line_item = new OrderLineItem($game['quantity']);
                $line_item->setName("Tickets / $get_name");
                $line_item->setBasePriceMoney($price_money);

                $total_price += ((float) $game['quantity'] * $get_price) * 100;

                $lines[] = $line_item;
            endforeach;

            $order = new Order($setting->square_is_production ? $setting->square_live_location_id : $setting->square_sandbox_location_id);
            $order->setLineItems($lines);

            $checkout_option = new CheckoutOptions();
            $checkout_option->setRedirectUrl(route('landing.payment_success', [
                'transaction_internal_id' => $transaction_internal_id
            ]));

            $create_payment_link_request = new CreatePaymentLinkRequest();
            $create_payment_link_request->setIdempotencyKey((string) \Illuminate\Support\Str::uuid());
            $create_payment_link_request->setOrder($order);
            $create_payment_link_request->setCheckoutOptions($checkout_option);

            $response = $checkoutApi->createPaymentLink($create_payment_link_request);

            if (!$response->isSuccess()) {
                return response()->json(['error' => $response->getErrors()], 500);
            }

            $paymentLinkUrl = $response->getResult()->getPaymentLink()->getUrl();

            $transaction = new Transaction();
            $transaction->order_id = $response->getResult()->getPaymentLink()->getOrderId();
            $transaction->payment_id = null;
            $transaction->transaction_internal_id = $transaction_internal_id;
            $transaction->price = $total_price;
            $transaction->status = 'PENDING';
            $transaction->email = $email;
            $transaction->send_email = false;
            $transaction->save();

            foreach ($games as $key => $game) :
                $items = collect($get_ticket->tickets_group_format)->splice($ticket_index, $game['quantity']);

                foreach ($items as $key => $item) :
                    $transaction->lines()->createMany(
                        collect($item)->map(function ($ticket) use ($transaction, $game) {
                            return [
                                'ticket_id' => $ticket->id,
                                'transaction_id' => $transaction->id,
                                'game_id' => $game['id']
                            ];
                        })->toArray()
                    );
                endforeach;

                $ticket_index += $game['quantity'];
            endforeach;

            return response()->json(['paymentLinkUrl' => $paymentLinkUrl]);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function get_ticket($total_tickets)
    {
        $data = (object)[];
        $data->tickets_group = null;
        $data->tickets_group_format = [];

        for ($key = 1; $key <= 25; $key++) :
            $transaction_latest_first = Transaction::whereHas('lines.ticket', function ($query) use ($key) {
                $query->where('ticket_index', $key);
            })->with(['lines' => function ($query) use ($key) {
                $query->whereHas('ticket', function ($query) use ($key) {
                    $query->where('ticket_index', $key);
                });
            }])->latest()->first();

            $last_ticket = null;

            // ? Obtener el ultimo linea de ticket
            if ($transaction_latest_first) :
                $last_ticket = $transaction_latest_first->lines->last();
            endif;

            $tickets_available = collect([]);

            // ? si no hay tickets ya disponibles iniciar desde el 1
            if (!$last_ticket) :
                $tickets_available = Ticket::where('ticket_index', $key)->orderBy('id')->take($total_tickets)->get();
            endif;

            // ? si hay tickets disponibles inciar desde la linea
            if ($last_ticket) :
                $tickets_available = Ticket::where('ticket_index', $key)->where('id', '>', $last_ticket->ticket_id)->orderBy('id')->take($total_tickets)->get();
            endif;

            if ($tickets_available->count() < $total_tickets) :
                $remaining_tickets = $total_tickets - $tickets_available->count();
                $get_tickets_remaining = Ticket::where('ticket_index', $key)->orderBy('id')->take($remaining_tickets)->get();

                $tickets_available = $tickets_available->merge($get_tickets_remaining);
            endif;

            $data->tickets_group[] = $tickets_available;
        endfor;

        for ($index = 0; $index < $total_tickets; $index++) :
            for ($key = 0; $key < 25; $key++) :
                $data->tickets_group_format[$index][] = $data->tickets_group[$key][$index];
            endfor;
        endfor;

        return $data;
    }

    public function payment_success($transaction_internal_id)
    {
        return view('success');
    }

    public function payment_webhook(Request $request)
    {
        $type = $request->type;
        $data_payment = $request->data;

        switch ($type) {
            case 'payment.updated':
                $response = $this->payment_webhook_payment($data_payment);

                if ($response['error']) {
                    return response()->json(['error' => $response['message']], 500);
                }
                break;
        }

        return response()->json(['status' => 'ok']);
    }

    public function payment_webhook_payment($data_payment)
    {
        try {
            $payment = $data_payment['object']['payment'];
            $payment_id = $payment['id'];
            $order_id = $payment['order_id'];
            $status = $payment['status'];

            $transaction = Transaction::with(['lines', 'lines.ticket'])->where('order_id', $order_id)->first();

            if (!$transaction) {
                new \Exception('Transaction not found');
            }

            if ($status !== 'COMPLETED') {
                new \Exception('Payment not completed ' . $status);
            }

            if ($transaction->status === 'COMPLETED') {
                return [
                    'error' => false,
                    'message' => "Payment success"
                ];
            }

            // ? Mandar un email
            $lines = $transaction->lines->map(function ($line) {
                $line->game = collect($this->games)->filter(function ($game) use ($line) {
                    return $game->id == $line->game_id;
                })->first();

                $data = (object)[];
                $data->game = $line->game->name;
                $data->ticket = $line->ticket;

                return $data;
            })->chunk(25);

            foreach ($lines as $key => $line) :
                $data = [
                    'name' => $transaction->email,
                    'order_number' => $order_id,
                    'payment_id' => $payment_id,
                    'date_transaction' => $transaction->created_at->format('F d, Y'),
                    'total_paid' => "$ " . number_format((float) $transaction->price / 100, 2),
                    'email' => $transaction->email,
                    'lines' => $line,
                    'game_name' => $line->first()->game
                ];

                Mail::send('emails.send_tickets', $data, function ($message) use ($transaction, $data) {
                    $message->to($transaction->email, $transaction->name)->subject('Payment Success - Game Tickets ' . $data['game_name']);
                });
            endforeach;

            $transaction->status = $status;
            $transaction->send_email = true;
            $transaction->payment_id = $payment_id;
            $transaction->save();

            return [
                'error' => false,
                'message' => "Payment success"
            ];
        } catch (\Exception $e) {
            return [
                'error' => true,
                'message' => $e->getMessage()
            ];
        }
    }
}
