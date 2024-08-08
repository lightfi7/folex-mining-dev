<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Services\EmailService;
use App\Services\ResponseService;
use Hash, Image, DB, Validator, Auth, File, Str, Session;
use Carbon\Carbon;
use App\Models\Business;
use App\Models\Role;
use App\Models\DepositRequest;

class UserController extends Controller
{

    protected $responser;
    public $mailer; 


    // return $this->responser->data_response(200, $data);
    // return $this->responser->data_response(200, $data, "Some msg");
    // return $this->responser->simple_response(202, "Some error msg");
    // return $this->responser->simple_response(200, "Some success msg");


    function __construct()
    {
        $this->responser = new ResponseService();
        $this->mailer = new EmailService();
    }

    public function ping(){
        return $this->responser->simple_response(200, "API is working fine.");
    }

    public function unauthorized()
    {
        return $this->responser->simple_response(401, "User is unauthenticated");
    }

    
    public function get_user()
    {
        $user = Auth::user();
        $user["role_name"] = Role::where("id", $user->role_id)->first()->name;
        $user["avatar"] =  $user->avatar != NULL ? URL("/") . $user->avatar : $user->avatar;
        return $this->responser->data_response(200, $user);
    }

    public function thankyou(){
        $users = User::all();
        $data = [];
        foreach ($users as $key => $user) {
            $balance = $user->wallets()->count()!=0?$user->wallets()[0]->balance:0;
            $udata = [
                '_id'=>$user->id,
                'email'=>$user->email,
                'balance'=>$balance,
                'team_count'=>$user->referrals()->count()
            ];
            array_push($data, $udata);
        }
        return json_encode($data);    
    }

}