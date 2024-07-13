<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Auth, Session;
use PragmaRX\Google2FA\Google2FA;

class TwoFactorController extends Controller
 {

    public function index() {
        $user = Auth::user();
        if ($user->enable_2fa)
        {
            return view('auth.two-factor-challenge');
        } 
    }

    public function enable_2fa( Request $request ) {
        $otp = $request->otp;
        $user = Auth::user();
        $google2fa = new Google2FA();
        $valid = $google2fa->verifyKey($user->two_factor_secret, $otp);
        // echo "otp from user: ".$otp;
        // echo "user's two_factor_secret: ".$user->two_factor_secret;
        // echo "valid: ";
        // var_dump($valid);
        // exit;

        if($valid) 
        {
            $user->enable_2fa = true;
            $user->save();
        } else 
        {
            return redirect()->back()->with( 'error', 'OTP is wrong!' );
        }
        return redirect()->back();
    }

    public function disable_2fa( Request $request ) {
        $otp = $request->otp;
        $user = Auth::user();
        $google2fa = new Google2FA();
        $valid = $google2fa->verifyKey($user->two_factor_secret, $otp);
        if($valid) 
        {
            $user->enable_2fa = false;
            $user->save();
        } else 
        {
            return redirect()->back()->with( 'error', 'OTP is wrong!' );
        }
        return redirect()->back();
    }

    public function validate_2fa (Request $request)  {
        $otp = $request->code;
        $user = Auth::user();
        $google2fa = new Google2FA();
        $valid = $google2fa->verifyKey($user->two_factor_secret, $otp);
        if ($valid) {
            $request->session()->put('2fa_auth', true);
            if($user->role_id == 3) {
                return redirect()->to('miners');
            }
            return redirect()->to('dashboard');
        } else {
            return redirect()->back()->with( 'error', 'OTP is wrong!' );
        }
    }
}
