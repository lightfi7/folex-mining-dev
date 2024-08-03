<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Seshac\Otp\Otp;
use Illuminate\Support\Facades\Redirect;
use Mail;
use App\Mail\SendCodeMail;


class EmailIsVerified
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next, $redirectToRoute = null)
    {
        $user = $request->user();
        // if(!$user->email_verified_at) {
        //     $otp = Otp::setValidity( 30 )  // otp validity time in mins
        //         ->setLength( 8 )  // Lenght of the generated otp
        //         ->setMaximumOtpsAllowed( 10 ) // Number of times allowed to regenerate otps
        //         ->setOnlyDigits( true )  // generated otp contains mixed characters ex:ad2312
        //         ->setUseSameToken( false ) // if you re-generate OTP, you will get same token
        //         ->generate( $user->email );
        //     // send mail
        //     Mail::to( $user->email )->send( new SendCodeMail( $otp->token ) );
        //     return $request->expectsJson()
        //             ? abort(403, 'Your email address is not verified.')
        //             : Redirect::guest('/email/verify');
        // }
        return $next($request);
    }
}
