<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use SoftDeletes;

    protected $table = 'settings';

    protected $fillable = [
        'price',
        'square_is_production',
        'square_live_applicant_id',
        'square_live_access_token',
        'square_live_location_id',
        'square_sandbox_applicant_id',
        'square_sandbox_access_token',
        'square_sandbox_location_id'
    ];

    public function is_production()
    {
        return $this->square_is_production;
    }
}
