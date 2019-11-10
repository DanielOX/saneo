<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class EventFeedback extends Model
{
    protected $fillable = [
        'user_id',
        'event_id',
        'feedback',
        'created_at',
        'updated_at'
    ];
}
