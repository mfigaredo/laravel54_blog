<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Repositories\Posts;
use Carbon\Carbon;

class PostsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['index','show']);
    }

    public function index(Posts $posts)
    {
        // return session('message');

        // $posts = Post::all();
        // $posts = Post::latest();

        // if($month = request('month')) {
        //     $posts->whereMonth('created_at',Carbon::parse($month)->month);
        // }
        // if($year = request('year')) {
        //     $posts->whereYear('created_at',$year);
        // }

        // $posts = $posts->get();
        // $posts = Post::orderBy('created_at','desc')->get();

        // $posts = Post::latest()
        //     ->filter(request(['month','year']))
        //     ->get();

        // $archives = Post::selectRaw('year(created_at) year, monthname(created_at) month, month(created_at) num_month, count(*) published')
        //     ->groupBy(['year','month','num_month'])
        //     ->orderByRaw('min(created_at) desc')
        //     ->get()
        //     ->toArray();
        // dd($posts);
        if(request('user_id')) {
            // var_dump(request('user_id'));
            $posts = $posts->fromUser(request('user_id'), true);
            // dd(auth()->user());
        } else {
            $posts = $posts->all(true);
        }
        $archives = Post::archives();

        // return $archives;
        // return compact(['posts','archives']);
        return view('posts.index',compact('posts','archives'));
    }

    public function show(Post $post)
    {
        // $post = Post::find($id);
        return view('posts.show', compact('post'));
    }  
    
    public function create()
    {
        return view('posts.create');
    }

    public function store()
    {
        // dd(request(['title','body']));
        // dd(request()->all());

        // $post = new Post;
        // $post->title = request('title');
        // $post->body = request('body');
        // $post->save();

        // Post::create([
        //     'title' => request('title'),
        //     'body' => request('body'),
        // ]);
        
        $this->validate(request(),[
            'title' => 'required|min:5|max:40',
            'body' => 'required',
        ]);

        // Post::create([
        //     'title' => request('title'),
        //     'body' => request('body'),
        //     'user_id' => auth()->id(),
        // ]);
        auth()->user()->publish(new Post(request(['title','body'])));
        
        session()->flash('message','Your post has been published.');

        return redirect('/');
    }
}
