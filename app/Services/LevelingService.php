<?php

namespace App\Services;
use App\Models\RefLevel;

class LevelingService
{
    public function checkLevel($referrals)
    {
        $referralThresholds = RefLevel::all()->sortBy('level')->toArray();

        $progress = 0;
        $rate_sumup = 0;
        $level = 0;
        $remained_referrals_for_next_level = 0;
        $referrals_from_for_current_level = 0;
        for ($i = 0; $i < count($referralThresholds); $i++) {
            $rate_sumup += $referralThresholds[$i]['rate'];
            if ($referrals < $referralThresholds[$i]['ref_num']) {
                $level = $referralThresholds[$i]['level'];
                $bottom = ($i == 0)?0:$referralThresholds[$i-1]['ref_num'];
                $progress = ($referrals - $bottom) * 100 / ($referralThresholds[$i]['ref_num'] - $bottom);
                $remained_referrals_for_next_level = ($referralThresholds[$i]['ref_num'] - $referrals);
                $referrals_from_for_current_level = $bottom;
                break;
            }    
        }
        // print_r($referrals);
        // print_r($level);
        // print_r($progress);
        // print_r($rate_sumup);        
        // exit;
        return [$level, $progress, $rate_sumup, $remained_referrals_for_next_level, $referrals_from_for_current_level];
    }
}
