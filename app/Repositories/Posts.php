<?php

namespace App\Repositories;

use App\Post;
use App\Redis;

class Posts
{
    protected $redis;

    public function __construct(Redis $redis)
    {
        $this->redis = $redis;

    }

    public function all($latest = true)
    {
        // return all posts
        if($latest) return Post::latest()->get();
        return Post::all();

    }

    public function fromUser($user_id, $latest = true)
    {
        // dd(Post::all());
        $posts = Post::where('user_id',$user_id);
        // dd($posts->latest()->get());
        if($latest) return $posts->latest()->get();
        return $posts->get();
    }
}