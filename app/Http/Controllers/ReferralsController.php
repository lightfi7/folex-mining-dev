<?php

namespace App\Http\Controllers;

use App\Models\Ledger;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Auth;
use App\Services\LevelingService;

class ReferralsController extends Controller
{
    private $directory = "main.user.referrals.";
    private $title_singular = "Referral";
    private $title_plurar = "Referrals";

    public function index()
    {

        $response = Http::get('http://localhost:5000/');

        // Check if the request was successful
        if ($response->successful()) {
            $data = $response->json();
            // Do something with the data
            var_dump($response->json());
            return;
        } else {
            // Handle the error
        }
        

        $directory = $this->directory;
        $title_singular = __($this->title_singular);
        $active_item = "referrals";
        // $refered_by_user = User::where("referred_by", Auth::user()->id)->count();
        $refered_by_user = User::where("id", Auth::user()->id)->first()->referrals_cnt;
        
        $levelingService = new LevelingService();
        list($ref_level, $ref_progress, $ref_rate_sumup, $remained_referrals_for_next_level, $referrals_from_for_current_level) = $levelingService->checkLevel($refered_by_user);

        $amount_sum_by_referrals = Ledger::where("user_id", Auth::user()->id)->where("type", 3)->sum("amount");
        // $amount_sum_by_referrals = Ledger::leftJoin("users", "ledgers.user_id", "=", "users.id")
        //                                 ->where("users.referred_by", Auth::user()->id)
        //                                 ->where("type", 4)->sum("amount");
        // $earned_via_referral = to_cash_format_small($amount_sum_by_referrals * $ref_rate_sumup / 100.0);
        $earned_via_referral = to_cash_format_small($amount_sum_by_referrals);
        // dd($amount_sum_by_referrals, $ref_rate_sumup, $earned_via_referral);
        return view($this->directory . "index", compact('title_singular', 'directory','active_item', 'refered_by_user', 'earned_via_referral', 'ref_level', 'ref_progress', 'ref_rate_sumup', 'remained_referrals_for_next_level', 'referrals_from_for_current_level'));
    }  
}
