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
                        @include("shared.alerts")

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
                        if(data[1])
                        {
                            clearInterval(t);
                            $('#title').text('Your payment was successful!');
                            setTimeout(()=>{
                                window.location.href = "/coinbase-success";
                            }, 3000);
                        }
                    }
                    else
                    {
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
            

            $('button').click(()=>{
                $.post('/cancel_payment',{
                    _token,
                    pid:'{{$pid}}'
                }, function(){
                    clearInterval(t);
                    window.location.href = "/miners/create";
                })
            })
            var now = new Date();
            var countdownDuration = (timeout-now)/1000;
            var display = document.querySelector('#countdown');
            if(countdownDuration>0)
                startCountdown(countdownDuration, display);
            else
            {
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
