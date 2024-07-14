@extends('layouts.main.base')

@section('title') {{@$title_plural}} @endsection

@section('content')
    <div class="container-fluid px-0">
        <div class="px-3 px-xxl-5 py-3 py-lg-4 border-bottom border-gray-200 after-header text-center">
            <h1 class="h2 mb-0 lh-sm">{{__("Pay by Tron")}}</h1>
        </div>

        <div class="px-3 px-xxl-5 py-3 py-lg-4 border-gray-200 after-header text-center">
            <div class="container-fluid px-0">
                <div class="col-xxl-12 mb-4">
                    <div class="pb-2 pt-3 mb-4 mb-xl-5">
                        @include("shared.alerts")

                        <div class="row justify-content-center align-items-center">
                            <div class="col-md-6 ">

                                <!-- Digital Clock -->
                                <div id="countdown" class="mb-4"></div>

                                <div class="input-group input-group-xl bg-white border border-gray-300 rounded px-0 me-2 me-xl-4 mb-4 ">
{{--                                    <label for="tronAddress" class="form-label">Tron Address</label> shit --}}
                                    <input type="text" class="form-control border-0" id="tronAddress" placeholder="Enter Tron Address" disabled>
                                </div>

                                <div class="input-group input-group-xl bg-white border border-gray-300 rounded px-0 me-2 me-xl-4 mb-4" >
{{--                                    <label for="amount" class="form-label">Amount of Tron</label>--}}
                                    <input type="number" class="form-control border-0" id="amount" placeholder="Enter Amount" disabled>
                                </div>

{{--                                <div class="input-group input-group-xl bg-white border border-gray-300 rounded px-3 me-2 me-xl-4 mb-4">--}}
{{--                                    <label for="minutes" class="form-label">Minutes</label>--}}
{{--                                    <input type="number" class="form-control border-0" id="minutes" placeholder="Enter Minutes" value="30" readonly>--}}
{{--                                </div>--}}

                                <div class="row">
                                    <div class="col">
{{--                                        <button type="button" class="btn btn-primary">Submit</button>--}}
                                        <button type="button" class="btn btn-secondary">Cancel</button>
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

@section('js')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            function startCountdown(duration, display) {
                var timer = duration, minutes, seconds;
                setInterval(function() {
                    minutes = parseInt(timer / 60, 10);
                    seconds = parseInt(timer % 60, 10);

                    minutes = minutes < 10 ? "0" + minutes : minutes;
                    seconds = seconds < 10 ? "0" + seconds : seconds;

                    display.textContent = minutes + ":" + seconds;

                    if (--timer < 0) {
                        timer = duration;
                    }
                }, 1000);
            }

            var countdownDuration = 30 * 60; // 30 minutes in seconds
            var display = document.querySelector('#countdown');
            startCountdown(countdownDuration, display);
        });
    </script>

    <style>
        #countdown {
            font-size: 2rem;
            font-weight: bold;
            color: #333;
            background: #f8f9fa;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            display: inline-block;
            width: 150px;
        }
    </style>
@endsection
