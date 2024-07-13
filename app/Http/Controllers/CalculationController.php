<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\CoinData;
use App\Models\Setting;
use App\Models\Ledger;
use Illuminate\Http\Request;
use App\Services\LevelingService;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Auth;

class CalculationController extends Controller
{
    public function index(Request $request)
    {
        $coins = CoinData::with("hashing")->where("is_active", 1)->get();
        $coin_data = $coins;

        // best members
        // $best_members = DB::select("select * from (select referred_by, count(*) as referred_by_sum from users group by users.referred_by order by referred_by_sum desc limit 0, 10) a left join users on a.referred_by = users.id;");
        $best_members = User::select(
            "users.*",
            "referrals_cnt as referred_by_sum"
            )
            ->where("referrals_cnt", ">", "0")
            ->orderBy("referrals_cnt", "desc")
            ->limit(10)
            ->get();

        // print_r($best_members);exit;

        foreach ($best_members as $record) {
            $record->user_anonymised = get_anonymised_user_name($record->email);

            $levelingService = new LevelingService();
            list($ref_level, $ref_progress, $ref_rate_sumup, $remained_referrals_for_next_level, $referrals_from_for_current_level) = $levelingService->checkLevel($record->referred_by_sum);
    
            $record->level = $ref_level;

            $amount_sum_by_referrals = Ledger::where("user_id", $record->referred_by)->where("type", 4)->sum("amount");
            $record->monthly_income = to_cash_format_small($record->referred_by_sum * $ref_rate_sumup * 31 / 100.0);

            $created_at = Carbon::parse($record->created_at);
            $record->join_cmp = $created_at->diffInDays();
        }

        return view('home', compact("coin_data", "coins", "best_members"));
    }

    //BTC
    // $B = $hashing_reward_block;
    // $H = $p * 1000000000000; //Converting TaraHash to Hash
    // $S = 86400;
    // $upper = ($B * $H * $S);
    // $D = $hashing_difficulty;
    // $lower = ( $D * 4294967296 ); //4294967296 = 2^32
    // $coin_production = $upper / $lower;
    // ( <reward_block> * (<total_hash> * 1000000000000) * 86400 ) / (<difficulty> * 4294967296)

    //ETH
    // $H = $p * 1000000; //Converting megaHash to Hash
    // $B = $hashing_reward_block;
    // $D = $hashing_difficulty;
    // $S = 86400;
    // $coin_production = (($H * $B) / $D) * $S;
    //( ( ( <total_hash> * 1000000 ) * <reward_block> ) / <difficulty> ) * 86400

    //ZEC
    // $H = $p * 1000; //Converting megaHash to Hash
    // $B = $hashing_reward_block;
    // $D = $hashing_difficulty;
    // $N = $network_hashrate;
    // $S = 86400;
    // $coin_production =   (($H * $B) / ($D * 3600) ) * $S; 
    //( ( ( <total_hash> * 1000 ) * <reward_block> ) / ( <difficulty> * 3600 )  ) * 86400
    
    //KAC
    //YourHashRate_in_MHs * BlockReward * 86400 * 10^6 / (Difficulty * 2^32)
    //( ( <network_hashrate> * 1000000 ) * <reward_block> * 86400 * 1000000 ) / ( <difficulty> * 4294967296 )


    // MAKE DYNAMIC
    // id "data-input-ghs"
    // id "data-input-ghs-home"


}