<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laravelista\Comments\Commentable;

class Event extends Model
{
    use Commentable;
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
