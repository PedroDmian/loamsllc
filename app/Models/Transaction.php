<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use SoftDeletes;

    protected $table = 'transactions';

    protected $fillable = [
        'order_id',
        'payment_id',
        'transaction_internal_id',
        'price',
        'status',
        'email',
        'send_email'
    ];

    public function lines()
    {
        return $this->hasMany(TransactionLine::class, 'transaction_id', 'id');
    }
}
