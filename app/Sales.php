<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Sales extends Model
{
    protected $table = "sales";

     protected $fillable = [
         'userd_id',
         'event_id',
         'price',
         'created_at',
         'updated_at'
     ];
}
