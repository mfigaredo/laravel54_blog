@extends('layouts.master')

@section('content')
    <h2>{{$post->title}}</h2>

    {{--tags--}}
    @if(count($post->tags))
        <ul>
            @foreach($post->tags as $tag)
                <li><a href="/posts/tags/{{$tag->name}}">{{$tag->name}}</a></li>
            @endforeach
        </ul>
    @endif
    <p>{{$post->body}}</p>
    <hr>
    <div class="comments">
        <ul class="list-group">
        @foreach($post->comments as $comment)
            <li class="list-group-item">
               <strong>
                  {{$comment->created_at->diffForHumans()}}:&nbsp;
               </strong>
               {{$comment->body}}
            </li>
        @endforeach
        </ul>
        <hr>
        {{-- Add a Comment--}}
        <div class="card">
            <div class="card-block">
                <form action="/posts/{{$post->id}}/comments" method="POST">
                    {{csrf_field()}}
                    <div class="form-group">
                        <textarea name="body" id="body" cols="40" rows="3" class="form-control" required></textarea>     
                    </div>
                   
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">Add Comment</button>
                    </div>
                </form>
                @include('layouts.errors')
            </div>
        </div>
    </div>
@endsection