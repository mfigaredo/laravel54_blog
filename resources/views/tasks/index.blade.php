<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Task Index</title>
    <link rel="stylesheet" href="https://bootswatch.com/3/lumen/bootstrap.min.css">

</head>
<body>
    <div class="container">
        <h3>Task List</h3>
        <ul class="list-group">
            @foreach($tasks as $task)
                <li class="list-group-item"><a href="/tasks/{{$task->id}}">{{ $task->body }}</a></li>
            @endforeach
        </ul>
    </div>
</body>
</html>