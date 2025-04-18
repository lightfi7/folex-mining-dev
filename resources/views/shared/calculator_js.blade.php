<script>

    var $item_price, $min_deposit, $max_deposit, $prefix, $step, $system, $coin_data, $calc_min, $calc_max, $min, $max, $from, $hashing_difficulty, $hashing_reward_block, $network_hashrate, $coin_price, $investition_input, $average_input, $average_input_home, $prefix_power_input, $daily_income, $month_income, $year_income, $daily_income_home, $month_income_home, $year_income_home, setu, calculato, gpuPowe, gpuLv, power_consumption_cos, power_consumption_cost_home, calculator, $predict_price;



    $investition_input = $('#data-input-price');
    $average_input = $('#data-input-ghs');
    $average_input_home = $('#data-input-ghs-home');

    $prefix_power_input = $('.input-prefix');

    $daily_income = $('.calculate-earnings__calculator-results').find('#daily');
    $month_income = $('.calculate-earnings__calculator-results').find('#month');
    $year_income = $('.calculate-earnings__calculator-results').find('#year');

    $daily_income_home = $('.calculate-earnings__calculator-results').find('#daily_home');
    $month_income_home = $('.calculate-earnings__calculator-results').find('#month_home');
    $year_income_home = $('.calculate-earnings__calculator-results').find('#year_home');

    gpuPower = $('.calculate-earnings__wrap').find('#gpu-power');
    gpuLvl = $('.calculate-earnings__wrap').find('#gpuLvl');


    function variable_setup(){

        setup = $(".miner-setup");
        $item_price = $('.miner-select').find('.miner-select-item.active').data('price');
        $min_deposit = $('.miner-select').find('.miner-select-item.active').data('min');
        $max_deposit = $('.miner-select').find('.miner-select-item.active').data('max');
        $prefix = $('.miner-select').find('.miner-select-item.active').data('prefix');
        $step = $('.miner-select').find('.miner-select-item.active').data('step');
        $system = $('.miner-select').find('.miner-select-item.active').data('system');
        $coin_data = $('.miner-select').find('.miner-select-item.active').data('coinid');
        $calc_min = $min_deposit / $item_price;
        $calc_max = $max_deposit / $item_price;
        $min = $calc_min.toFixed(2);
        $max = $calc_max.toFixed(2);
        $from = $calc_min.toFixed(2);

        $hashing_difficulty = $('.miner-select').find('.miner-select-item.active').data('difficulty');
        $hashing_reward_block = $('.miner-select').find('.miner-select-item.active').data('reward');
        $network_hashrate = $('.miner-select').find('.miner-select-item.active').data('network');
        $coin_price = $('.miner-select').find('.miner-select-item.active').data('coin');
        $maintenance_fee = $('.miner-select').find('.miner-select-item.active').data('maintenance-fee');
        $splitfee = 10000000000000000000.0
        $s = 86400;
        power_consumption_cost =  0;
        power_consumption_cost_home = 0;

        slider_setup();
    }


    @foreach ($coin_data as $coin_item)
            {!! "function get_$coin_item->id(p){ return ".get_formula_for_js($coin_item)." }" !!}
            @endforeach

        function getProfit(p) {
        coin_data_selected = $coin_data;

        var production;
        @php
            $unit_conversion = [
                "TH/s" => "1000000000000",
                "MH/s" => "1000000",
                "KH/s" => "1000",
            ];
        @endphp

        @foreach ($coin_data as $coin_item)
        {!! "if(coin_data_selected == '$coin_item->id'){ production = get_$coin_item->id(p*".$unit_conversion[$coin_item->unit].") }" !!}

            if(coin_data_selected == '{{$coin_item->id}}'){

                // if(coin_data_selected == '{{$coin_item->id}}'){ production = get_$coin_item->id(p*{{$unit_conversion[$coin_item->unit]}}) }

                // $hash_price = $hashing->price_khs;   // usd$ per khs
                // $p = $cash / $hash_price;

                //Our Consumption
                // power_consumption - electric comsume per 1KH/s
                console.log("coin_item->unit", "{{$coin_item->unit}}");
                console.log("$unit_conversion[$coin_item->unit]", "{{$unit_conversion[$coin_item->unit]}}");
                power_consumption_cost_in_Kwatt = $('.miner-select').find('.miner-select-item.active').data('consumption');
                cost_per_kwh = $('.miner-select').find('.miner-select-item.active').data('cost'); // cost_per_kwh, 0.02$/Kwh electic cost
                // power_consumption_cost =  cost_per_kwh * ( power_consumption_cost_in_Kwatt ) * p * {{$unit_conversion[$coin_item->unit]}} / 1000;
                // power_consumption_cost =  cost_per_kwh * ( power_consumption_cost_in_Kwatt ) * p * {{$unit_conversion[$coin_item->unit]}} / 1000000000;
                power_consumption_cost =  cost_per_kwh * (power_consumption_cost_in_Kwatt)/1000 * 24;
                // console.log("cost_per_kwh * power_consumption_cost_in_Kwatt * p", cost_per_kwh * power_consumption_cost_in_Kwatt * p);

                // ( <total_hash> * 86400 ) / (<difficulty> * 4294967296) * <reward_block> * (0.99)

                //Home Consumption
                // power_consumption_cost_home = $('#data-input-ghs-home').val() * power_consumption_cost_in_Kwatt * p * {{$unit_conversion[$coin_item->unit]}} / 1000000000;
                power_consumption_cost_home = $('#data-input-ghs-home').val() * (power_consumption_cost_in_Kwatt)/1000 * 24;

                console.log('>>>>>>>#data-input-ghs-home.val(): ', $('#data-input-ghs-home').val());

                //Total income without electricity
                // var complete_income = ( $coin_price / (1 / production) );
                maintenance_fee = $('.miner-select').find('.miner-select-item.active').data('maintenance-fee');
                console.log(">>>>>>>>>>maintenance_fee: ", maintenance_fee);
                console.log(">>>>>>>>>>$coin_price: ", $coin_price);
                var complete_income = $coin_price * production * (100 - maintenance_fee) / 100.0;

                var income = complete_income - power_consumption_cost;
                var income_home = complete_income - power_consumption_cost_home;

                console.log("p:", p);
                console.log("$unit_conversion[$coin_item->unit]", "{{$unit_conversion[$coin_item->unit]}}");
                console.log("production:", production);
                console.log("'#data-input-ghs-home'.val():", $('#data-input-ghs-home').val());
                console.log("power_consumption_cost_in_Kwatt:", power_consumption_cost_in_Kwatt);
                console.log("cost_per_kwh:", cost_per_kwh);
                console.log("power_consumption_cost:", power_consumption_cost);
                console.log("power_consumption_cost_home:", power_consumption_cost_home);
                console.log("complete_income:", complete_income);
                console.log("income:", income);
                console.log("income_home:", income_home);

                setResult(income, income_home);
            setResult(income, income_home);
        }
        @endforeach

    }

    /*function getProfitSHA(p){
        var H = p * 1000000000000; //Converting TaraHash to Hash
        var D = $hashing_difficulty;
        var B = $hashing_reward_block;
        var S = 86400;
        var N = $network_hashrate

        var upper = (B * H * S);
        var lower = ( D * 4294967296 ); //4294967296 = 2^32
        var production = upper / lower;

        //( <reward_block> * (<total_hash> * 1000000000000) * 86400 ) / (<difficulty> * 4294967296)
    }

    function getProfitEthash(p){
        var H = p * 1000000; //Converting megaHash to Hash
        var D = $hashing_difficulty;
        var B = $hashing_reward_block;
        var S = 86400;
        var production = ((H * B) / D) * S;
    }

    function getProfitEquihash(p){
        var H = p * 1000; //Converting kiloHash to Hash
        var D = $hashing_difficulty;
        var B = $hashing_reward_block;
        var S = 86400;
        var production =   ((H * B) / (D * 3600) ) * S;
    }*/

    function setResult(result , result_home){

        var $daily_calc = (result).toFixed(4);
        var $month_calc = ($daily_calc * 30).toFixed(4);
        var $year_calc = ($daily_calc * 365).toFixed(4);

        $daily_income.html('$' + $daily_calc);
        $month_income.html('$' + $month_calc);
        $year_income.html('$' + $year_calc);

        var $daily_calc_home = (result_home).toFixed(4);
        var $month_calc_home = ($daily_calc_home * 30).toFixed(4);
        var $year_calc_home = ($daily_calc_home * 365).toFixed(4);

        $daily_income_home.html('$' + $daily_calc_home);
        $month_income_home.html('$' + $month_calc_home);
        $year_income_home.html('$' + $year_calc_home);

        $("#hashing").val($system)
        $("#cash").val($investition_input.val())
        $("#coin_data_id").val($coin_data)

    }

    $(function(){

        variable_setup();

        $('.miner-select').on('click', '.miner-select-item:not(.active)', function (event) {
            cos

            variable_setup();

            $(this).closest('.miner-select').find('.miner-select-item').removeClass('active');
            $(this).addClass('active');
            $item_price = $(this).data('price');
            $min_deposit = $(this).data('min');
            $max_deposit = $(this).data('max');
            $prefix = $(this).data('prefix');
            $step = $(this).data('step');
            $system = $(this).data('system');
            $coin_data = $(this).data('coinid');

            $calc_min = $min_deposit / $item_price;
            $calc_max = $max_deposit / $item_price;
            $min = $calc_min.toFixed(2);
            $max = $calc_max.toFixed(2);
            $from = $calc_min.toFixed(2);

            $hashing_difficulty = $(this).data('difficulty');
            $hashing_reward_block = $(this).data('reward');
            $network_hashrate = $(this).data('network');

            $maintenance_fee = $(this).data('maintenance-fee');


            $coin_price = $(this).data('coin');

            //Setting values in hidden fields

            calculator.update({
                min: $min,
                max: $max,
                from: $from,
                skin: "round",
                hide_min_max: true,
                postfix: $prefix,
                step: $step
            });
            $investition_input.val($min_deposit);
            $average_input.val($min);
            $prefix_power_input.html($prefix);

        });

    });

    function slider_setup(){

        setup.ionRangeSlider({
            min: $min,
            max: $max,
            from: $from,
            skin: "round",
            hide_min_max: true,
            postfix: $prefix,
            step: $step,
            onStart: function (data) {
                var $average = data.from;
                var $money = $average * $item_price;
                $investition_input.val(Math.round($money));
                $average_input.val($average);
                getProfit($average);
            },
            onChange: function (data) {
                var $average = data.from;
                var $money = $average * $item_price;
                $investition_input.val(Math.round($money));
                $average_input.val($average);
                getProfit($average);
            },
            onUpdate: function (data) {
                var $average = data.from;
                var $money = $average * $item_price;
                $average_input.val($average);
                getProfit($average);
            }
        });

        calculator = setup.data("ionRangeSlider");

        $average_input_home.on("change", function () {

            var val = $(this).val();
            //val = Math.round(val);

            var intRegex = /^\d+$/;
            var floatRegex = /^((\d+(\.\d *)?)|((\d*\.)?\d+))$/;
            if ( (!intRegex.test(val)) && (!floatRegex.test(val)) )  {
                val = 0.2;
            }

            $average_input_home.val(val);
            calculator.update({
                from: $average_input.val(), step: $step, onUpdate: function (data) {
                    var $average = data.from
                    getProfit($average);
                }
            });
        });

        $average_input.on("change", function () {
            var val = $(this).val();
            val = Math.round(val);

            var intRegex = /^\d+$/;
            var floatRegex = /^((\d+(\.\d *)?)|((\d*\.)?\d+))$/;
            if (!intRegex.test(val) || !floatRegex.test(val)) {
                val = $min;
                $average_input.val(val);
            }

            if (val < $min) {
                val = $min;
            }

            $average_input.val(val);
            calculator.update({
                from: val, step: $step, onUpdate: function (data) {
                    var $average = data.from;
                    var $money = $average * $item_price;
                    $investition_input.val(Math.round($money));
                    getProfit($average);
                }
            });
        });

        $investition_input.on("change", function () {

            var val = $(this).val();
            var intRegex = /^\d+$/;
            var floatRegex = /^((\d+(\.\d *)?)|((\d*\.)?\d+))$/;

            if (!intRegex.test(val) || !floatRegex.test(val)) {
                $investition_input.val($min_deposit);
            }
            if (val > $max_deposit) {
                $investition_input.val($max_deposit);
            }
            if (val < $min_deposit) {
                $investition_input.val($min_deposit);
            }

            $calc = val / $item_price;
            calculator.update({
                from: $calc, onUpdate: function (data) {
                    var $average = data.from;
                    var $money = $average * $item_price;
                    $average_input.val($average);
                    getProfit($average);
                }
            });
        });

    }

</script>