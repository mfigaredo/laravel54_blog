@component('mail::message')
# Introduction

The body of your message.

### Thanks so much for registering, {{ $user->name }}!

We have you with the email: {{ $user->email }}. You can change that later if you want.

@component('mail::button', ['url' => 'https://laracasts.com'])
Start Browsing
@endcomponent

@component('mail::panel', ['url' => ''])
Some inspirational quote to go here.
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent

