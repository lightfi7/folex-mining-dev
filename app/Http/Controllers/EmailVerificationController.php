<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Seshac\Otp\Otp;
use Auth;
use App\Models\User;

class EmailVerificationController extends Controller
{
    public function index(){

        return view('auth.verify-email');
    }

    public function verifyOtp( Request $request ) {
        $token = $request->get( 'code' );
        $identifier = Auth::user()->email;
        $verify = Otp::setAllowedAttempts( 10 ) // number of times they can allow to attempt with wrong token
            ->validate( $identifier, $token );
        if ( $verify->status ) {
            // set email verified at
            $user = User::where( 'email', $identifier )->first();
            $user->email_verified_at = date( 'Y-m-d H:i:s' );
            $user->save();
            if ($user->role_id == 3) {
                return redirect()->to( url( 'miners' ) );
            }
            return redirect()->to( url( 'dashboard' ) );
        } else {
            return redirect()->back()->with( 'error', __("OTP is wrong!") );
        }
    }
}
