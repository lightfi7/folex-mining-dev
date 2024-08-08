@extends('layouts.main.base')

@section('title') {{__("Miners")}} @endsection

@section('content')
<script>
document.addEventListener('DOMContentLoaded', function() {
    var tableRows = document.querySelectorAll('.miners-table-row');

    tableRows.forEach(function(row) {
        row.addEventListener('click', function() {
            var nextRow = this.nextElementSibling;
            if (nextRow && nextRow.classList.contains('under-section')) {
                var elExpanded = row.querySelector('.expanded');
                var elCollapsed = row.querySelector('.collapsed');
                console.log('elExpanded.style.display: ', elExpanded.style.display);
                console.log('elCollapsed.style.display: ', elCollapsed.style.display);
                if (window.innerWidth <= 600) {
                    console.log('#1');
                } else {
                    if (nextRow.style.display === 'none') {
                        elExpanded.style.display = 'none';
                        elCollapsed.style.display = 'table-cell';
                    } else {
                        elExpanded.style.display = 'table-cell';
                        elCollapsed.style.display = 'none';
                    }
                    nextRow.style.display = nextRow.style.display === 'none' ? 'table-row' : 'none';
                }

            }
        });
    });
});
</script>

<div class="container-fluid px-0">

    <div class="px-3 px-xxl-5 py-3 py-lg-4 border-bottom border-gray-200 after-header">
        <div class="container-fluid px-0">
            <div class="row align-items-center">
                <div class="col">
                    <h1 class="h2 mb-0 lh-sm">{{__("Miners")}}</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="px-3 px-xxl-5 py-3 py-lg-4 border-gray-200 after-header">
        <div class="container-fluid px-0">
          
            <div class="col-xxl-12 mb-4">
                <div class="pb-2 pt-3 mb-4 mb-xl-2">
                    <div class="row">
                        <div class="col-xxl-12 mb-4">
                            <div class="card rounded-12 shadow-dark-80 border border-gray-50 mb-3 mb-xl-5">
                                <div class="d-flex align-items-center px-3 px-md-4 py-3 border-bottom border-gray-200">
                                    <h5 class="card-header-title my-2 ps-md-3 font-weight-semibold">{{__("Miners")}}</h5>
                                </div>
                                <div class="card-body px-0 p-md-4">
                                    <div class="bd-example">
                                        <div class="slim_scroll pb-5 miners-table">
                                            <table class="table miners-table responsive-table" style="width: 100% !important;">
                                                <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>{{__("Hashing")}}</th>
                                                        <th>{{__("Power")}}</th>
                                                        <th>{{__("Income")}}</th>
                                                        <th>{{__("Coin Value")}}</th>
                                                        <th>{{__("Date")}}</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @if(count($miners) > 0)
                                                    @foreach($miners as $key => $miner)
                                                    <tr class="miners-table-row">
                                                        <td class="expanded"><span>+</span></td>
                                                        <td class="collapsed"><span>-</span></td>
                                                        <td data-label='{{__("Hashing")}}'>{{$miner->hashings_name." ".$miner->coin_display_name}}</td>
                                                        <td data-label='{{__("Power")}}'>{{$miner->energy_bought}} {{$miner->coin_unit}}</td>
                                                        <td data-label='{{__("Income")}}'>${{to_cash_format_small($miner->amount_deposit)}}</td>
                                                        <td data-label='{{__("Coin Value")}}'>{{get_payent_method($miner->payment_method)}}</td>
                                                        <td data-label='{{__("Date")}}'>{{to_date($miner->created_at)}}</td>
                                                    </tr>
                                                    <tr class="under-section">
                                                        <td colspan="6">
                                                            <div>
                                                                <span class="under-section-title">{{__("Deposited")}}:&nbsp;</span>
                                                                <span class="under-section-value">${{to_cash_format_small($miner->amount_deposit)}}</span>
                                                            </div>
                                                            <div>
                                                                <span class="under-section-title">{{__("Earned Since Deposit")}}:&nbsp;</span>
                                                                <span class="under-section-value">${{to_cash_format_small($miner->sum_amount)}}</span>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    @endforeach
                                                    @else
                                                    <tr class="text-center">
                                                        <td colspan="6" style="padding-left: 0;text-align: center;">{{__("No Record Found")}}</td>
                                                    </tr>
                                                    @endif
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="text-center">
                                            <a href="{{url('miners/create')}}" class="btn btn-primary">{{__("Add Miner")}}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-12">
                            @include("shared.alerts")
                        </div>
                        <div class="col-sm-12 col-md-4">
                            <div class="card mb-4 rounded-12 shadow border border-gray-50">
                                <div class="card-body p-3 p-xl-3 p-xxl-4">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <span class="small text-gray-600 d-block mb-1">{{__("Your Invest")}}</span>
                                            <span class="h5 mb-0">${{to_cash_format_small($total_invests)}}</span>
                                        </div>
                                        <div class="col-auto">
                                            <div class="position-relative">
                                                <i class="fa fa-dollar fa-3x"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-4">
                            <div class="card mb-4 rounded-12 shadow border border-gray-50">
                                <div class="card-body p-3 p-xl-3 p-xxl-4">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <span class="small text-gray-600 d-block mb-1">{{__("Your balance")}}</span>
                                            <span class="h5 mb-0">${{to_cash_format_small($user_balance)}}</span>
                                        </div>
                                        <div class="col-auto">
                                            <div class="position-relative">
                                                <i class="fa fa-dollar fa-3x"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-4">
                            <div class="card mb-4 rounded-12 shadow border border-gray-50">
                                <div class="card-body p-3 p-xl-3 p-xxl-4">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <span class="small text-gray-600 d-block mb-1">{{__("Number of miners")}}</span>
                                            <span class="h5 mb-0">{{count(@$miners)}} {{__("Miners")}}</span>
                                        </div>
                                        <div class="col-auto">
                                            <div class="position-relative">
                                                <i class="fa fa-shopping-cart fa-3x"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 text-center mb-1 text-alternate text-smaller lh-1-25 mt-3">
                            <h6>${{to_cash_format_small($sum_of_profit_by_coin)}} {{__("TO COINS")}}</h6>
                        </div>
                    </div>
                    <div class="row dashboard-usd-to-balance-section">
                        @foreach ($profit_by_coin as $record)
                        @if (count($total_power) == 3)
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                        @else
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                        @endif
                            <div class="card rounded-12 shadow-dark-80 border border-gray-50 mb-3 mb-xl-5">
                                <div class="card-body h-100">
                                    <div class="in-usd">${{to_cash_format_small($record->amount_sum)}}</div>
                                    <span class="badge badge-primary badge-sm mb-2" style="font-size: inherit;">
                                    {{to_btc_format(convert_to_coin_earning($record->price ,$record->amount_sum))}} {{$record->coin_display_name}}
                                    </span>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <div class="row mt-3 dashboard-power-bought">
                    @foreach ($total_power as $record)
                        @if (count($total_power) == 3)
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                        @else
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                        @endif
                            <div class="card mb-4 rounded-12 shadow border border-gray-50">
                                <div class="card-body p-3 p-xl-3 p-xxl-4">
                                    <div class="coin-symbol-wrapper">
                                        <div class="left-side">
                                            <span class="small text-gray-600 d-block mb-1">{{__("POWER BOUGHT")}} ( {{$record->hashing_name}} 
                                            {{-- - TH/s --}}
                                            )
                                            </span>
                                            <span class="h5 mb-0">{{to_power_format($record->purchased)}}</span>
                                        </div>
                                        @if ($record->hashing_name == 'SHA-256' || $record->hashing_name == 'Bitcoin')
                                            <div class="symbol">&#x20BF;</div>
                                        @elseif ($record->hashing_name == 'Ethash' || $record->hashing_name == 'Ethash')
                                            <div class="symbol"><img src="{{ asset('frontend') }}/images/ethash.jpeg" alt="ETHW" class="icon"></div>
                                        @elseif ($record->hashing_name == 'KHeavyHash' || $record->hashing_name == 'Kaspa')
                                            <div class="symbol"><img src="{{ asset('frontend') }}/images/kas.png" alt="KAS" class="icon" style="width: 30px;"></div>
                                        @elseif ($record->hashing_name == 'Equihash' || $record->hashing_name == 'Equihash')
                                            <div class="symbol">&#x24E9;</div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                    </div>


                 


                    <!-- Your Referrals -->
                    <div class="row dashboard-your-referrals-section">
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="card mb-4 rounded-12 shadow border border-gray-50 your-referrals">
                                <div class="top-line">{{__("Your Referrals")}}</div>
                                <div class="ref-line">1. Lvl = {{$referral_counts_for_each_level[0]}}&nbsp;refs</div>
                                <div class="ref-line">2. LvL = {{$referral_counts_for_each_level[1]}}&nbsp;refs</div>
                                <div class="ref-line">3. LvL = {{$referral_counts_for_each_level[2]}}&nbsp;refs</div>
                                <div class="ref-line">4. LvL = {{$referral_counts_for_each_level[3]}}&nbsp;refs</div>
                                <div class="ref-line">5. LvL = {{$referral_counts_for_each_level[4]}}&nbsp;refs</div>
                                <div class="last-line">{{__("Total Income Through Ref")}}: ${{@$earned_via_referral}}</div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="card mb-4 rounded-12 shadow border border-gray-50 your-referrals">
                                <h5 class="last-line">Your Mining Income</h5>
                                <div class="last-line">${{@$earned_via_mining}}</div>
                                <div class="last-line">Referrals Total Income: ${{@$earned_via_referral}}</div>
                                <div class="last-line">Comulated Total: ${{$earned_via_mining + $earned_via_referral}}</div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-3">
                            <div class="card mb-4 rounded-12 shadow border border-gray-50 your-referrals">
                                <div class="top-line">Auto Trading Bot
                                    <input type="checkbox" name="" id="" style="margin-left: 5px;width: 20px;height: 20px;">
                                </div>
                                <div class="second-line">(more Information)</div>
                                <div class="last-line">= Comulated Total * 12% Monthly</div>
                                <div class="last-line">Showing: Daily, weekly, Monthly, Total</div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                    <div class="col-xxl-12 mb-4">
                            <div class="card rounded-12 shadow-dark-80 border border-gray-50 mb-3 mb-xl-5">
                                <div class="d-flex align-items-center px-3 px-md-4 py-3 border-bottom border-gray-200">
                                    <h5 class="card-header-title my-2 ps-md-3 font-weight-semibold">{{__("Income for the last 7 days")}}</h5>
                                </div>
                                <div class="card-body px-0 p-md-4">
                                    <div class="bd-example">
                                        <div class="slim_scroll pb-5">
                                            <table class="table responsive-table" style="width: 100% !important;">
                                                <thead>
                                                    <tr>
                                                        <th>{{__("Hashing")}}</th>
                                                        <th>{{__("Power")}}</th>
                                                        <th>{{__("Income")}}</th>
                                                        <th>{{__("Coin Value")}}</th>
                                                        <th>{{__("Date")}}</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @if(count($incomes) > 0)
                                                    @foreach($incomes as $key => $income)
                                                        @if(!empty($income->coin))
                                                        <tr>
                                                            <td data-label="{{__('Hashing')}}">{{$income->hashings ? ($income->hashings->name." (".($income->coin->coin_display_name).")") : ""}} {{$income->reference_ledger_id ? " Referral" : ""}}</td>
                                                            <td data-label="{{__('Power')}}">{{$income->payments ? ($income->payments->energy_bought ." ". $income->coin->unit) : ""}} {{$income->reference_ledger_id ? " Referral" : ""}}</td>
                                                            <td data-label="{{__('Income')}}">$ {{to_cash_format_small($income->amount)}}</td>
                                                            <td data-label="{{__('Coin Value')}}">{{$income->coin_value}}</td>
                                                            <td data-label="{{__('Date')}}">{{to_date($income->created_at)}}</td>
                                                        </tr>
                                                        @endif
                                                    @endforeach
                                                    @else
                                                        <tr class="text-center">
                                                            <td colspan=5 style="padding-left: 0;text-align: center;">{{__("No Record Found")}}</td>
                                                        </tr>
                                                    @endif
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="text-center">
                                            <a href="{{url('miners-income')}}" class="btn btn btn-primary">{{__("Show All")}}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
