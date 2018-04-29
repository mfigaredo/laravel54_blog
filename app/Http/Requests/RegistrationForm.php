<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\User;
use App\Mail\WelcomeAgain;

class RegistrationForm extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|min:4',
            'email' => 'required|email|min:4',
            'password' => 'required|confirmed',
        ];
    }

    public function persist()
    {
        // Create and save the user
        $user = User::create(
           $this->only(['name', 'email', 'password'])
        );


        // Sign them in
        auth()->login($user);

        // Send welcome email
        \Mail::to($user)->send(new WelcomeAgain($user));
    }
}
