<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Task;

class TasksController extends Controller
{
    public function __construct()
    {
       echo '<div class="alert alert-success alert-sm">Tasks Controller</div>';
        
    }

    public function index()
    {
        $tasks = Task::all();
        return view('tasks.index',compact('tasks'));
    }

    public function show($id)  //   show(Task $task) -->  $task = Task::find({task})
    {
        $task = Task::find($id);
        if(!$task || $task===null) {
            return 'invalid task';
        }
        // $task =Task::find($id);
        // return $task;
        // dd($task);
        return view('tasks.show',compact('task'));
    }

}
