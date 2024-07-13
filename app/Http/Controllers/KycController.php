<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class KycController extends Controller
{
    const AppToken = 'sbx:Ym4Fp0mVQT5rW0CFboB16LyD.yakQC9FQaCO21GZudSfhqH8nQGPfwQXr';
    const SecretKey = 'beQdpsJ0M7uQqZfL6xJPPDZrihLR0lIT';

    public function getAccessToken() {
        $user = Auth::user();
        $externalUserId = $user->id;
        $levelName = 'basic-kyc-level';
        $sumsubObject = new SumsubClient(self::AppToken, self::SecretKey);
        $accessTokenInfo = $sumsubObject->getAccessToken($externalUserId, $levelName);
        $ACCESS_TOKEN = $accessTokenInfo['token'];
        $email = $user->email;
        // print_r("ACCESS_TOKEN: ".$ACCESS_TOKEN);
        // print_r("email: ".$email);
        // exit;
        return view('main.account.edit', compact('ACCESS_TOKEN', 'email'));
    }
}
