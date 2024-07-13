@extends('layouts.main.base')

@section('title')
Account
@endsection

@section('content')
<div class="container-fluid px-0">
    <div class="px-3 px-xxl-5 py-3 py-lg-4 border-bottom border-gray-200 after-header">
        <div class="container-fluid px-0">
            <div class="row align-items-center">
                <div class="col">
                    <h1 class="h2 mb-0 lh-sm">{{ __('Account') }}</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="px-3 px-xxl-5 py-3 py-lg-4 border-gray-200 after-header">
        <div class="container-fluid px-0 py-lg-3">
            <div class="col-xxl-12 mb-4">

                <div class="">
                    @include('shared.alerts')
                </div>

                <div class="col-12">
                    <div class="pb-3">
                        <ul class="nav nav-tabs nav-tabs-md nav-tabs-line position-relative zIndex-0" id="pills-tab"
                            role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="pills-account-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-deposit" type="button" role="tab"
                                    aria-controls="pills-deposit" aria-selected="false">{{ __('Account') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-2fa-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-withdrawl" type="button" role="tab"
                                    aria-controls="pills-withdrawl" aria-selected="false">{{ __('2FA') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-kyc-tab" data-bs-toggle="pill" data-bs-target="#pills-kyc"
                                    type="button" role="tab" aria-controls="pills-withdrawl" aria-selected="false">{{
                                    __('KYC') }}</a>
                            </li>
                        </ul>
                    </div>


                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-deposit" role="tabpanel"
                            aria-labelledby="pills-account-tab">
                            <div class="card rounded-12 shadow-dark-80 border border-gray-50 mb-3 mb-xl-5">
                                <div class="d-flex align-items-center px-3 px-md-4 py-3 border-bottom border-gray-200">
                                    <h5 class="card-header-title my-2 ps-md-3 font-weight-semibold">{{ __('Account') }}</h5>
                                </div>
                                <div class="card-body px-0 p-md-4">
                                    <div class="bd-example">
                                        <form action="{{ url('account/update') }}" method="POST" class="ajax-form px-3"
                                            class="form-horizontal">
                                            @csrf
                                            @include($directory . 'partials.form')
                                            <div class="col-sm-12">
                                                <button type="submit" class="btn btn-primary submit-btn btn-lg">{{
                                                    @$form_button }}</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="pills-withdrawl" role="tabpanel" aria-labelledby="pills-2fa-tab">
                            @if (Auth::user()->enable_2fa)
                            <div class="d-flex justify-content-center">
                                <form method="POST" action="twofactor/disable" class="pt-3 col-12 col-lg-3">
                                    @csrf
                                    <div class="mb-4 pb-md-2">
                                        <input id="otp" type="text" class="form-control text-center" name="otp"
                                            required>
                                    </div>
                                    <div class="d-grid">
                                        <button type="submit" class="btn btn-primary text-white">{{ __('disable')
                                            }}</button>
                                    </div>
                                </form>
                            </div>
                            @else
                            <!-- QR code -->
                            <div class="col-md-12 col-12 my-3">
                                <div class="row align-items-center">
                                    <div class="visible-print text-center">
                                        {!! QrCode::size(200)->generate($qrCodeUrl) !!}
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex justify-content-center">
                                <div class="card mb-4 rounded-12 shadow border border-gray-50 col-lg-9 col-12">
                                    <div class="card-body p-3 p-xl-3 p-xxl-4 row">
                                        <div class='col-md-8'>
                                            <input class='form-control form-control-lg'
                                                value='{{ Auth::user()->two_factor_secret }}' disabled>
                                        </div>
                                        <div class='col-md-4'>
                                            <a onclick="copy_url('{{ Auth::user()->two_factor_secret }}')"
                                                class="btn btn-primary btn-lg float-right text-white">{{ __('Copy')
                                                }}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex justify-content-center">
                                <form method="POST" action="twofactor" class="pt-3 col-lg-3 col-12">
                                    @csrf
                                    <div class="mb-4 pb-md-2">
                                        <input id="otp" type="text" class="form-control text-center" name="otp"
                                            required>
                                    </div>
                                    <div class="d-grid">
                                        <button id="enable-2fa" type="submit" class="btn btn-primary text-white">{{
                                            __('enable') }}</button>
                                    </div>
                                </form>
                            </div>
                            @endif
                        </div>
                        {{-- kyc --}}
                        <div class="tab-pane fade" id="pills-kyc" role="tabpanel" ria-labelledby="pills-kyc-tab">
                            <!-- <form class="pt-3 col-12 col-lg-3"> -->
                            <div id="kyc-modal"
                                class="position-absolute top-50 start-50 translate-middle col-12 col-lg-4 visually-hidden bg-white rounded-3 py-3 zindex-master">
                                <div class="px-3">
                                    <a class="d-flex justify-content-end cursor-pointer" id="kyc-close">
                                        <i class="fa fa-times fa-lg" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <div id="sumsub-websdk-container"></div>
                            </div>
                            <div style="min-height: 300px;" class="d-flex justify-content-center align-items-center">
                                @if ($answer)
                                <div class="bg-green-500 d-flex gap-2 text-white fs-4 align-items-center p-2">
                                    <i class="fa fa-check" aria-hidden="true"></i>
                                    <div>{{__("You are verified")}}</div>
                                </div>
                                @else
                                <button id="btnVerify" class="btn btn-primary text-white col-lg-4 col-12">{{
                                    __('Verify') }}
                                </button>
                                @endif
                            </div>
                            <!-- </form> -->
                            <script>
                                var email = "<?php echo $email; ?>";
                                $('#btnVerify').click(function () {
                                    $.ajax({
                                        headers: {
                                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                        },
                                        url: "/account/kyc",
                                        type: "POST",
                                        data: {},
                                        success: function (response) {
                                            launchWebSdk(response, email);
                                            const element = document.getElementById("kyc-modal");
                                            element.classList.remove("visually-hidden");
                                        }
                                    });
                                });
                                $('#kyc-close').click(function () {
                                    const element = document.getElementById("kyc-modal");
                                    element.classList.add("visually-hidden");
                                });

                                // $('#enable-2fa').click(function() {
                                //     $.ajax({
                                //         headers: {
                                //             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                //         },
                                //         url: "/twofactor/enable",
                                //         type: "POST",
                                //         data: {},
                                //         success: function(response) {
                                //             launchWebSdk(response, email);
                                //             const element = document.getElementById("kyc-modal");
                                //             element.classList.remove("visually-hidden");
                                //         }
                                //     });
                                // })
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection