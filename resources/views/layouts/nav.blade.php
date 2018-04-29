<div class="blog-masthead">
    <div class="container">
    <nav class="nav blog-nav">
        <a class="nav-link active" href="#">Home</a>
        <a class="nav-link" href="#">New features</a>
        <a class="nav-link" href="#">Press</a>
        <a class="nav-link" href="#">New hires</a>
        <a class="nav-link" href="#">About</a>
        <a class="nav-link" href="{{ url('/posts/create') }}">Create</a>
        @if(Auth::check())
            <a href="/?user_id={{auth()->id()}}" class="nav-link ml-auto">{{auth()->user()->name}}</a>
            <a href="/logout" class="nav-link pull-right">Sign Out</a>
        @else
            <a href="/login" class="nav-link ml-auto">Sign In</a>
            <a href="/register" class="nav-link pull-right">Register</a>
        @endif
    </nav>
    </div>
</div>