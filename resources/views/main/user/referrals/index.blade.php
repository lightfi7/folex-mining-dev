@extends('layouts.main.base')

@section('title') {{__("Referral Program")}} @endsection

@section('content')

<div class="container-fluid px-0">

    <div class="px-3 px-xxl-5 py-3 py-lg-4 border-bottom border-gray-200 after-header">
        <div class="container-fluid px-0">
            <div class="row align-items-center">
                <div class="col">
                    <h1 class="h2 mb-0 lh-sm">{{__("Referral Program")}}</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="px-3 px-xxl-5 py-3 py-lg-4 border-gray-200 after-header">
        <div class="container-fluid px-0">
            <div class="col-xxl-12 mb-4">
                <div class="pb-2 pt-3 mb-4 mb-xl-2">
                    <div class="row">
                        <div class="col-12">
                            @include("shared.alerts")
                        </div>
                        <div class="col-12">
                            <h5 class="float-left" style="cursor: default;">{{__("Get 4% of each deposit made by people you refer")}}</h5>
                        </div>


                        <div class="col-12">
                            <div class="card mb-4 rounded-12 shadow border border-gray-50">
                                <div class="card-body p-3 p-xl-3 p-xxl-4 row">
                                    <div class='col-md-8'>
                                        <input class='form-control form-control-lg' value='{{url('register?ref=').Auth::user()->referral}}' disabled>
                                    </div>
                                    <div class='col-md-4'>
                                        <a onclick="copy_url('{{url('register?ref=').Auth::user()->referral}}')" class="btn btn-primary btn-lg float-right copy-referral-link">{{__("Copy Referral Link")}}</a>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="col-md-6 col-12">
                            <div class="card mb-4 rounded-12 shadow border border-gray-50">
                                <div class="card-body p-3 p-xl-3 p-xxl-4">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <span class="small text-gray-600 d-block mb-1">{{__("Referrals")}}</span>
                                            <span class="h5 mb-0">{{@$refered_by_user}} {{__("User(s)")}}</span>
                                        </div>
                                        <div class="col-auto">
                                            <div class="position-relative">
                                                <i class="fa fa-users fa-3x"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="user-profile">
                                        <div class="progress">
                                            <div class="progress-bar" role="progressbar" style="width: {{ $ref_progress }}%;" aria-valuemin="0" aria-valuemax="100">{{ $refered_by_user-$referrals_from_for_current_level }}&nbsp;/&nbsp;{{ $refered_by_user-$referrals_from_for_current_level + $remained_referrals_for_next_level }}</div>
                                        </div>
                                        <div class="under-progress">
                                            <div>
                                                <!-- <i class="fas fa-unlock-alt"></i>                                            -->
                                                <strong>{{__("Level")}}&nbsp;{{@$ref_level}}</strong>
                                            </div>
                                            <div class="next-level">
                                                <i class="fas fa-lock"></i>
                                                {{__("Level")}}&nbsp;{{@($ref_level + 1) }}
                                            </div>
                                        </div>
                                        <div class="level-up-comment">
                                            @if ($remained_referrals_for_next_level > 0)
                                            <hr>
                                            <div class="tip">
                                                {{__("Unlock Your Next Level with")}} <strong>{{@$remained_referrals_for_next_level}}</strong> {{$remained_referrals_for_next_level == 1 ? __('Referral') : _('Referrals')}}!
                                            </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-12">
                            <div class="card mb-4 rounded-12 shadow border border-gray-50">
                                <div class="card-body p-3 p-xl-3 p-xxl-4">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <span class="small text-gray-600 d-block mb-1">{{__("Income by Referrals")}}</span>
                                            <span class="h5 mb-0">$ {{@$earned_via_referral}}</span>
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
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection