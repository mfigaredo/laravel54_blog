<div class="blog-post">
    <h3 class="blog-post-title">
        <a href="/posts/{{$post->id}}">
            {{$post->title}}
        </a>
    </h3>
    <p class="blog-post-meta">
        <a href="#">{{$post->user->name}}</a> on 
        {{$post->created_at->toFormattedDateString()}}
    </p>

    <p>{{ $post->body }}</p>


</div><!-- /.blog-post -->


