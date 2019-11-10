<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class EventBooking extends Model
{
     protected $fillable = [
         'userd_id',
         'event_id',
         'price',
         'created_at',
         'updated_at'
     ];
}
