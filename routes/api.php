<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;

Route::get('/', function (Request $request) {
    return response()->json([
        'status' => 'ok',
        'message' => 'API is up and running',
    ]);
});

Route::post('/payment_webhook', [HomeController::class, 'payment_webhook'])->name('landing.payment_webhook');
Route::post('/square_link', [HomeController::class, 'create_payment_link'])->name('api.square_link');
