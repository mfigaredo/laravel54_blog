<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


// $stripe = app(\App\Billing\Stripe::class);

// dd(resolve('App\Billing\Stripe'));

Route::get('/', 'PostsController@index')->name('home');
Route::get('/posts/create','PostsController@create');
Route::get('/posts/{post}','PostsController@show');
Route::post('/posts','PostsController@store');

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/about', function () {
    // return view('about',[
    //     'name' => 'World',
    // ]); 
    // return view('about')->with('name','World');
    $name = "Jeffrey";
    $age = 35;
    // $tasks = [
    //     'Go to movies',
    //     'Clean the house',
    //     'Go shopping',
    // ];
    $tasks = DB::table('tasks')->get();
    $tasks = App\Task::all();
    // return $tasks;  // in JSON format

    return view('about',compact('name','age','tasks'));
});

Route::get('tasks','TasksController@index');

// Route::get('/tasks',function(){
    // $tasks = DB::table('tasks')->latest()->get();
    // $tasks = App\Task::all();
    // return view('tasks.index',compact('tasks'));

// });

Route::get('tasks/{task}','TasksController@show');

//Route::get('/tasks/{task}',function($id){
    // $task = DB::table('tasks')->find($id);
    // $task = App\Task::find($id);
    // dd($task);
    // return view('tasks.show',compact('task'));
// });

Route::post('posts/{post}/comments','CommentsController@store');

Route::get('/register', 'RegistrationController@create');
Route::post('/register', 'RegistrationController@store');
Route::get('/login', 'SessionsController@create')->name('login');
Route::get('/logout', 'SessionsController@destroy');
Route::post('/login', 'SessionsController@store');


Route::get('/posts/tags/{tag}','TagsController@index');
# Route::get('/posts/tags','TagsController@index');