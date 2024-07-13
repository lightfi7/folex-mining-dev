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
                        <div class="d-flex justify-content-center">
                            <form method="POST" action="twofactor/disable" class="pt-3 col-12 col-lg-3">
                                @csrf
                                <div class="mb-4 pb-md-2">
                                    <input id="otp" type="text" class="form-control text-center" name="otp" required >
                                </div>
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-primary text-white">{{__('disable')}}</button>
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