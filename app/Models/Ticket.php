<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    use SoftDeletes;

    protected $table = 'tickets';

    protected $fillable = [
        'ticket_index',
        'num_one',
        'num_two',
        'num_three',
        'num_four',
        'num_five',
        'num_six'
    ];
}
