<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Yajra\DataTables\DataTables;
use Auth, Session, Image, DB, Hash;
use Illuminate\Support\Facades\File;
use App\Http\Controllers\Controller;
use PragmaRX\Google2FA\Google2FA;
use App\Helpers\SumsubClient;

class AccountController extends Controller {
    private $directory = 'main.account.';
    private $title_singular = 'Account';
    private $title_plurar = 'Account';

    const AppToken = 'sbx:Ym4Fp0mVQT5rW0CFboB16LyD.yakQC9FQaCO21GZudSfhqH8nQGPfwQXr';
    const SecretKey = 'beQdpsJ0M7uQqZfL6xJPPDZrihLR0lIT';

    public function edit( string $ACCESS_TOKEN = null ) {
        $directory = $this->directory;
        $title_singular = __( $this->title_singular );
        $active_item = 'account';
        $form_button = __( 'Update' );
        $record = Auth::user();
        $google2fa = new Google2FA();
        if (!$record->two_factor_secret) {
            $secretKey = $google2fa->generateSecretKey(64);
            $record->two_factor_secret = $secretKey;
            $record->save();
        }
        $qrCodeUrl = $google2fa->getQRCodeUrl(
            'cloudminepool.com',
            $record->email,
            $record->two_factor_secret
        );
        $email = $record->email;

        // check KYC
        $kyc_enabled = 1;
        

        $answer = $kyc_enabled;
        if ($kyc_enabled == 0) {

            $answer = $this->getAnswer($record->id);

            if ($answer) {
                User::where("id", auth()->user()->id)->update([
                    "kyc_enabled" => 1
                ]);    
            }    
        }

        // if(isset($status['review']['reviewResult'])) {
        //     if ($status['review']['reviewResult']['reviewAnswer'] == 'GREEN') {
        //         $answer = true;
        //     }
        // } 
        return view( $this->directory . 'edit', compact( 'title_singular', 'record', 'directory', 'active_item', 'form_button', 'qrCodeUrl', 'email', 'answer' ) );
    }

    public function update( Request $request ) {
        $user = Auth::user();
        $this->validate( $request, [
            'first_name'=>'required',
            'last_name'=>'required',
            'email' => 'required|email|unique:users,email,'.$user->id.',id',
        ] );

        $record = User::where( 'id', $user->id )->first();

        if ( isset( $request->password ) ) {
            $this->validate( $request, [
                'password' => 'required|min:8|confirmed',
            ] );
            $record->password = Hash::make( $request->password );
        }

        $record->email = $request->email;
        $record->first_name = $request->first_name;
        $record->last_name = $request->last_name;
        $record->phone = isset( $request->phone_number ) ? $request->phone_number : NULL;

        if ( $record->role_id == 3 )
        if ( $record->isDirty( [ 'first_name', 'last_name', 'email' ] ) )
        $record->is_mailchimp_synced = 0;

        $record->save();

        return [ array( 'success' => __( 'Account updated Successfully' ) ) ];
    }

    public function getAnswer(string $id) {
        $sumsubObject = new SumsubClient( self::AppToken, self::SecretKey );
        $status = $sumsubObject->getUserStatus($id);
        $answer = false;
        if(isset($status['review']['reviewResult'])) {
            if ($status['review']['reviewResult']['reviewAnswer'] == 'GREEN') {
                $answer = true;
            }
        }
        return $answer;
    }

    public function getAccessToken() {
        $user = Auth::user();
        $externalUserId = $user->id;
        $levelName = 'basic-kyc-level';
        $sumsubObject = new SumsubClient( self::AppToken, self::SecretKey );
        $accessTokenInfo = $sumsubObject->getAccessToken( $externalUserId, $levelName );
        $ACCESS_TOKEN = $accessTokenInfo[ 'token' ];
        return $ACCESS_TOKEN;
    }

}
