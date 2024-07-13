<?php

namespace App\Actions\Fortify;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Str;
use App\Mail\SendCodeMail;
use Mail;
use PHLAK\StrGen;
use PragmaRX\Google2FA\Google2FA;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    public static function username()
    {
        return config('fortify.username', 'email');
    }

    public function create(array $input)
    {
        // dd($input);
        Validator::make($input, [
            'first_name' => ['required', 'string', 'max:255'],
            'last_name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'cloudminepool_agreement' => ['required'],
            'password' => $this->passwordRules(),
        ])->validate();

        // get referral
        $referred_by = null;
        if(isset($input['ref'])) {
            $referred_by = User::where('referral', $input['ref'])->first()->id;
            // print_r($input['ref']);
            print_r($referred_by);
            // exit;

            // update user referrals_cnt
            $user = User::find($referred_by);
            $user->referrals_cnt = $user->referrals_cnt + 1;
            $user->save();            
        }

        // generate own referral
        $generator = new StrGen\Generator();
        $referral = $generator->alphaNumeric(11);
        
        // genrate 2fa secret
        $google2fa = new Google2FA();
        $secretKey = $google2fa->generateSecretKey(64);

        // public id
        $part = explode( '@', $input['email'] );

        $result = User::create([
            'role_id' => 3,
            'first_name' => $input['first_name'],
            'last_name' => $input['last_name'],
            'email' => $input['email'],
            'referred_by' => $referred_by,
            'password' => Hash::make($input['password']),
            'two_factor_secret' => $secretKey,
            'referral' => $referral,
            'public_id' => $part[ 0 ],
        ]);

        return $result;
    }
}
