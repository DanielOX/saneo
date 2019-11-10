<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Event extends Model
{
    protected $fillable = [
        'title',
        'description',
        'price',
        'user_id',
        'location',
        'image',
        'created_at',
        'updated_at'
    ];
}
