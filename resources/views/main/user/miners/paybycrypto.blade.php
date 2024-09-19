@extends('layouts.main.base')

@section('title') {{@$title_plural}} @endsection

@section('content')
    <div class="container-fluid px-0">
        <div class="px-3 px-xxl-5 py-3 py-lg-4 border-bottom border-gray-200 after-header text-center">
            <h1 class="h2 mb-0 lh-sm" id="title">{{__("Waiting for Your Payment")}}</h1>
        </div>

        <div class="px-3 px-xxl-5 py-3 py-lg-4 border-gray-200 after-header text-center">
            <div class="container-fluid px-0">
                <div class="col-xxl-12 mb-4">
                    <div class="pb-2 pt-3 mb-4 mb-xl-5">
                        <h4>{{__("Tron network")}}</h4>
                        @include("shared.alerts")

                        <!-- TRON Network Icon -->
                        <div class="tron-icon mb-4">
                      <svg width="73px" height="73px" viewBox="0 0 32 32" id="_x3C_Layer_x3E_" version="1.1" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <style type="text/css">  .st0{fill:none;stroke:#455A64;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st1{fill:none;stroke:#263238;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}  </style> <g id="Tron_x2C__crypto"> <g id="XMLID_128_"> <circle class="st1" cx="16" cy="16" id="XMLID_138_" r="14.5"></circle> <line class="st1" id="XMLID_119_" x1="25.5" x2="17" y1="13.54" y2="14.8"></line> <line class="st1" id="XMLID_118_" x1="8.5" x2="17" y1="7.87" y2="14.8"></line> <polyline class="st1" id="XMLID_117_" points="15.43,26.13 17,14.8 22.16,10.26 "></polyline> <polygon class="st1" id="XMLID_116_" points="8.5,7.87 15.43,26.13 25.5,13.54 22.16,10.26 "></polygon> </g> </g> </g></svg>                     </div>

                        <div class="row justify-content-center align-items-center">
                            <div class="col-md-6 ">
                                <!-- Digital Clock -->
                                <div id="countdown" class="mb-4 form-control">00:00</div>

                                <div class="input-group input-group-xl bg-white border border-gray-300 rounded px-0 me-2 me-xl-4 mb-4 ">
                                    <input type="text" value="{{$wa}}" class="form-control border-0" id="tronAddress" placeholder="Enter Tron Address" disabled>
                                </div>

                                <div class="input-group input-group-xl bg-white border border-gray-300 rounded px-0 me-2 me-xl-4 mb-4" >
                                    <input type="number" value="{{$amount}}" class="form-control border-0" id="amount" placeholder="Enter Amount" disabled>
                                </div>

                                <div class="row">
                                    <div class="col">
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
            let timeout = new Date('{{$timeout}}');
            let _token = '{{ csrf_token() }}';
            var t = 0;

            function checkStatus(){
                $.post('/check-payment?',{
                    _token,
                    pid:'{{$pid}}'
                }, function(data){
                    if(data[0]){
                        if(data[1]){
                            clearInterval(t);
                            $('#title').text('Your payment was successful!');
                            setTimeout(()=>{
                                window.location.href = "/coinbase-success";
                            }, 3000);
                        }
                    } else {
                        clearInterval(t);
                        $('#title').text('Wrong Payment ID');
                        setTimeout(()=>{
                            window.location.href = "/miners/create";
                        }, 3000);
                    }
                });
            }

            function startCountdown(duration, display) {
                var timer = duration, minutes, seconds;
                t = setInterval(function() {
                    minutes = parseInt(timer / 60, 10);
                    seconds = parseInt(timer % 60, 10);

                    minutes = minutes < 10 ? "0" + minutes : minutes;
                    seconds = seconds < 10 ? "0" + seconds : seconds;

                    display.textContent = minutes + ":" + seconds;

                    checkStatus();

                    if (--timer < 0) {
                        clearInterval(t);
                        $('#title').text('Time has expired! Try again...');
                        setTimeout(()=>{
                            window.location.href = "/miners/create";
                        }, 3000);
                    }
                }, 1000);
            }

            $('button').click(()=> {
                $.post('/cancel_payment', {
                    _token,
                    pid:'{{$pid}}'
                }, function(){
                    clearInterval(t);
                    window.location.href = "/miners/create";
                })
            });

            var now = new Date();
            var countdownDuration = (timeout-now)/1000;
            var display = document.querySelector('#countdown');
            if(countdownDuration > 0)
                startCountdown(countdownDuration, display);
            else {
                $('#title').text('Time has expired! Try again...');
                setTimeout(()=>{
                    window.location.href = "/miners/create";
                }, 3000);
            }
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
