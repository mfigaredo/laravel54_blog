<?php

namespace App;

class Comment extends Model
{
    //
    public function post()
    {
        // $comment -> post
        return $this->belongsTo(Post::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
