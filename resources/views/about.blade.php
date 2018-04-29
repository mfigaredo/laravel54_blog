<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>About Us</title>
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400,600" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://bootswatch.com/3/lumen/bootstrap.min.css">
    <style>
    html, body {
                background-color: #fff;
                color: #000;
                font-family: 'Raleway', sans-serif;
                font-weight: 400;
                height: 100vh;
                margin: 0;
            }
    </style>
</head>
<body>
    <div class="container">
        <h2>About Us</h2>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem quo nam recusandae, dicta qui quis placeat dolores commodi? Consequuntur vero cupiditate assumenda. Soluta, molestiae sequi? Sint, eligendi eum adipisci consequatur sit voluptates beatae explicabo consectetur recusandae animi blanditiis voluptatem autem laboriosam numquam sequi accusamus, amet ex. Autem ratione vitae nobis.</p>
        <h3>Hello, <?=$name?></h3>
        <h5>Your age is {{ $age }}</h5>
        <ul class="list-group">
            @foreach($tasks as $task)
                <li class="list-group-item">{{ $task->body }}</li>
            @endforeach
        </ul>

    </div>
</body>
</html>