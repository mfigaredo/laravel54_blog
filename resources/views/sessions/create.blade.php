@extends('layouts.master')

@section('content')
    <div class="col-md-8">
        <h1>Sign In</h1>
        <form action="/login" method="POST">
            {{csrf_field()}}
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" required class="form-control">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" required class="form-control">
            </div>
            <div class="form-group">
                <button class="btn btn-primary" type="submit">Login</button>
            </div> 
            @include('layouts.errors')        
        </form>
    </div>
@endsection