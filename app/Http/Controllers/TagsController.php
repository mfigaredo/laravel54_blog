<?php

namespace App\Http\Controllers;

use App\Tag;
# use App\Post;
# use App\Repositories\Posts;
use Illuminate\Http\Request;

class TagsController extends Controller
{
    //
    public function index(Tag $tag = null)
    {
        // dd(\App\Post::all());
        // // return $tag;
        // if(!$tag || $tag===null) {
        //     $posts = \App\Post::all();
        // } else {
            $posts = $tag->posts;
        // }
        return view('posts.index',compact('posts'));
    }
}
