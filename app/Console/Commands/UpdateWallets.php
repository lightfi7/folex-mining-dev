<?php

namespace App\Console\Commands;

use App\Http\Controllers\CalculationController;
use App\Models\CoinData;
use App\Models\Ledger;
use App\Models\Payment;
use App\Models\Setting;
use App\Models\Wallet;
use Illuminate\Console\Command;
use Str;

class UpdateWallets extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'wallet:update';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Update user wallets.';
    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        //Every 20 mins
        $this->save_profits();
        return 0;
    }

    public function save_profits(){

        info("Mining cron running...");

        $now = date("Y-m-d H:i:s");
        $date = date("Y-m-d H:i:s", strtotime($now." -24 Hours"));
        
        $payments = Payment::with("coin")->where("last_wallet_updated", "<", $date )->get(); //The Query;

        // echo date("Y-m-d H:i:s");
        // dd($payments->pluck("last_wallet_updated", "id")->toArray());

        foreach ($payments as $key => $payment) {
           
            $hashing = $payment->coin->hashing;
            
            $coin_data = $payment->coin;
            $cash  = $payment->amount_deposit;

            $hash_price = $hashing->price_khs;
            $p = $cash / $hash_price;

            $fetch_result = calculate_income($p, $coin_data);
            if($fetch_result[0] == false){
                info("Updated wallet failed in calculation for payment id: $payment->id");
                continue;
            }

            $result = $fetch_result[1]; 

        
            $minused_amount = 0;
            $percents = [4, 2, 1, 0.5, 0.25];
            for ($i = 1; $i <= 5; $i++) {
                // 1. Lvl: 4%
                // 2. LvL: 2%
                // 3. LvL: 1%
                // 4. LvL: 0.5%
                // 5. LvL: 0.25%
                $ref_parent = get_referral_parent($payment->user_id, $i);
                if ($ref_parent == null) {
                    continue;
                }
                $ref_balance_to_add = $result["daily"] * $percents[$i-1] / 100;
                // USER WALLET SETUP
                $wallet = Wallet::where("user_id", $ref_parent->id)->first();
                $is_new = false;
                if(!$wallet){
                    continue;
                    $wallet = new Wallet();
                    $wallet->user_id = $ref_parent->id;
                    $is_new = true;
                }
                $wallet->balance = $is_new ? $ref_balance_to_add : ($wallet->balance + $ref_balance_to_add);     
                $wallet->save();
                // UPDATING LEDGER
                if ($ref_parent) {
                    $ledger = new Ledger();
                    $ledger->public_id = (string) Str::uuid();
                    $ledger->user_id = $ref_parent->id;
                    $ledger->current_wallet_balance = $wallet->balance;
                    $ledger->amount = $ref_balance_to_add;
                    $ledger->type = 3;
                    $ledger->payment_id = $payment->id;
                    $ledger->hashing_id = $payment->hashing_id;
                    $ledger->coin_data_id = $payment->coin_data_id;
                    $ledger->coin_value = to_btc_format(convert_to_coin_earning($coin_data->price, $result["daily"]));
                    $ledger->action_performmed_at = date("Y-m-d H:i:s", strtotime($payment->last_wallet_updated. "+24 Hours"));
                    $ledger->save();    
                }

                $minused_amount += $ref_balance_to_add;
            }

            // USER WALLET SETUP
            $wallet = Wallet::where("user_id", $payment->user_id)->first();
            $is_new = false;
            if(!$wallet){
                continue;
                $wallet = new Wallet();
                $wallet->user_id = $payment->user_id;
                $is_new = true;
            }
            $wallet->balance = $is_new ? $result["daily"] - $minused_amount : ($wallet->balance + $result["daily"] - $minused_amount);     
            $wallet->save();
            //UPDATING LEDGER
            $ledger = new Ledger();
            $ledger->public_id = (string) Str::uuid();
            $ledger->user_id = $payment->user_id;
            $ledger->current_wallet_balance = $wallet->balance;
            $ledger->amount = $result["daily"] - $minused_amount;
            $ledger->type = 4;
            $ledger->payment_id = $payment->id;
            $ledger->hashing_id = $payment->hashing_id;
            $ledger->coin_data_id = $payment->coin_data_id;
            $ledger->coin_value = to_btc_format(convert_to_coin_earning($coin_data->price, $result["daily"] - $minused_amount));
            $ledger->action_performmed_at = date("Y-m-d H:i:s", strtotime($payment->last_wallet_updated. "+24 Hours"));
            $ledger->save();

            $payment->last_wallet_updated = date("Y-m-d H:i:s", strtotime($payment->last_wallet_updated. "+24 Hours"));
            $payment->save();            
        }
    
    }
}
