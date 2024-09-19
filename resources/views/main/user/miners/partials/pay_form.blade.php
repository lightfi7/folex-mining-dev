<section class="calculate-earnings container-fluid">
    <div class="row">
        <div class="col-md-12 pt-4">
            @include("shared.alerts")

            <!-- <ul class="nav nav-tabs nav-tabs-md nav-tabs-line position-relative zIndex-0" id="pills-tab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link" id="pills-coin-tab" onclick="set_payment_method(3)" data-bs-toggle="pill" data-bs-target="#pills-coin" type="button" role="tab" aria-controls="pills-coin" aria-selected="false">{{__("Coinbase")}}</a>
                </li>
            </ul> -->

            <div class="tab-content py-3 py-lg-3" id="pills-tabContent ">
                <div class="tab-pane fade show active" id="pills-coin" role="tabpanel" aria-labelledby="pills-coin-tab">
                    <div class="card rounded-12 shadow-dark-80 border border-gray-50 mb-3 mb-xl-5 px-3 px-xxl-3 py-3">
                        <div class="card-body h-100">

                            <h5 class="mb-5">{{__("You will be redirect for making payment")}}.</h5>
                            <div class="row">

                                <div class="col-md-6 pb-3 mb-md-4">
                                    <label class='float-left form-label form-label-lg'>{{__("Amount Payable")}} </label>
                                    <input class="form-control form-control-xl" value="${{$cash}}" readonly style="background-color: #fff !important;">
                                </div>

                                <div class="col-md-6 pb-3 mb-md-4">
                                    <label class='float-left form-label form-label-lg'>{{__("Amount BTC")}} </label>
                                    <input class="form-control form-control-xl" value="{{to_btc_format($cash_btc)}}" readonly style="background-color: #fff !important;">
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
