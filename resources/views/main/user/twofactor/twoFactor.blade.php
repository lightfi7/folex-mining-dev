@extends('layouts.main.base')

@section('title') 2FA @endsection

@section('content')

<div class="container-fluid px-0">

    <div class="px-3 px-xxl-5 py-3 py-lg-4 border-bottom border-gray-200 after-header">
        <div class="container-fluid px-0">
            <div class="row align-items-center">
                <div class="col">
                    <h1 class="h2 mb-0 lh-sm">{{__('Two Factor Authentication')}}</h1>
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
                            <h5 class="float-left" style="cursor: default;"></h5>
                        </div>

                        <!-- QR code -->
                        <div class="col-md-12 col-12 my-3">
                          <div class="row align-items-center">
                            <div class="visible-print text-center">
                                {!! QrCode::size(300)->generate($qrCodeUrl); !!}
                            </div>
                          </div>
                        </div>

                        <div class="d-flex justify-content-center">
                            <div class="card mb-4 rounded-12 shadow border border-gray-50 col-lg-9 col-12">
                                <div class="card-body p-3 p-xl-3 p-xxl-4 row">
                                    <div class='col-md-8'>
                                        <input class='form-control form-control-lg' value='{{Auth::user()->two_factor_secret}}' disabled>
                                    </div>
                                    <div class='col-md-4'>
                                        <a onclick="copy_url('{{Auth::user()->two_factor_secret}}')" class="btn btn-primary btn-lg float-right text-white">{{__("Copy")}}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center">
                            <form method="POST" action="twofactor" class="pt-3 col-lg-3 col-12">
                                @csrf
                                <div class="mb-4 pb-md-2">
                                    <input id="otp" type="text" class="form-control text-center" name="otp" required >
                                </div>
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-primary text-white">{{__('enable')}}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection