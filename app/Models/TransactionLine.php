<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class TransactionLine extends Model
{
    use SoftDeletes;

    protected $table = 'transactions_line';

    protected $fillable = [
        'transaction_id',
        'ticket_id',
        'game_id'
    ];

    public function ticket()
    {
        return $this->belongsTo(Ticket::class, 'ticket_id', 'id');
    }
}
