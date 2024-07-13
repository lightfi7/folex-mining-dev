<!DOCTYPE html>
<html lang="en" data-footer="true" data-navcolor="dark" data-color="light-green">
@php
$site_data["site_name"] = "CloudMinePool";
$site_data["site_logo"] = asset('frontend') . '/images/logo1.svg';
$site_data["favicon"] = asset('frontend') . '/images/favicon.png';
$settings = DB::table("settings")->first();
if($settings){
$site_data["site_name"] = @$settings->site_name;
$site_data["site_logo"] = @$settings->site_logo ? @$settings->site_logo : $site_data["site_logo"];
}
@endphp
<head>
    @include('layouts.main.header_includes' , $site_data)
    <title>@yield('title')</title>
    @yield('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        .alert .close {
            font-size: x-large;
        }

        .modal-header .close {
            background: #eee;
            padding: 2px 5px !important;
            float: right;
            border: #eee;
            border-radius: 5px;
            color: black;
            font-weight: 800;
        }

        table {
            width: inherit !important;
        }

        input[type="search"] {
            display: none !important;
        }

        .buttons-excel,
        .dataTables_length {
            /* display: none !important; */
        }

        /* Hide the row containing datatable search and buttons etc  */
        .dataTables_wrapper .row:first-child {
            display: none !important;
        }

        /* sidebar */
        .navbar-vertical.navbar-expand-lg .navbar-nav {
            height: calc(100vh);
        }

        /* Referrals */
        .user-profile {
            margin-top: 30px;
        }
        .progress {
            background-color: #f5f5f5;
            border-radius: 20px;
            box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
            height: 20px;
            border: 1px solid #c9c3c3;
        }

        .progress-bar {
            background-color: #4caf50;
            border-radius: 20px;
            height: 100%;
            transition: width 0.6s ease;
            font-style: italic;
        }
        .progress-bar.zero-percent {
            color: #000000;
        }

        .under-progress {
            display: flex;
            justify-content: space-between;
            font-size: 13px;
            font-weight: 600;
            padding: 6px;
            font-style: italic;
        }
        .under-progress .next-level {
            color: #adb5bd;
        }
        .under-progress .level-up-comment hr {
            color: #a99e9b;
        }

        .profit-container {
            display: flex;
            flex-direction: column;
            border-radius: 20px;
            border: 1px solid #ffffff;
            padding: 10px 5px;
        }
        .profit-container .profit-item {
            display: flex;
        }
        .profit-container .profit-item .profit-item-col {
            width: 50%;
            padding-left: 10px;
            padding-top: 3px;
        }
        .profit-container .profit-item .profit-item-col.first-col {
            border-right: 1px solid #e0e0e0;
        }
        .profit-container .profit-item .profit-item-col {

        }
        .profit-container .profit-item .profit-item-col > div:first-child {
            font-style: italic;
        }
        .profit-container .profit-item .profit-item-col > div:nth-child(2) {
            font-weight: 500;
        } 
        /* .miners-table {
            width: 100% !important;
            display: flex;
            flex-direction: column;
        }
        .miners-table .miner-item {
            width: 100%;
        } */

        .under-section {
            display: none;
            background: #dddddd;
        }
        .miners-table-row {
            cursor: pointer;
        }
        .miners-table-row .expanded {
            font-size: 30px;
            color: #737397 !important;
            font-weight: 900;
            border-bottom-width: 1px;
            display: table-cell;
            text-align: center;
        }
        .miners-table-row .collapsed {
            text-align: center;
            font-size: 30px;
            color: #737397 !important;
            font-weight: 900;
            border-bottom-width: 0px;
            display: none;
        }
        .under-section .under-section-title {
            font-weight: 600;
        }

        .responsive-table {
            width: 100%;
            border-collapse: collapse;
        }

        .responsive-table th, .responsive-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .responsive-table .empty-data {
            text-align: center;
        }

        .responsive-table th {
                border-bottom-width: 0px;
        }
        .under-section td {
            padding-left: 50px;
        }

        .your-referrals {
            padding: 20px;
        }
        .your-referrals .top-line {
            text-align: center;
            font-size: 20px;
            font-weight: 600;
            margin-bottom: 10px;
        }
        .your-referrals .ref-line {
            text-align: left;
        }
        .your-referrals .last-line {
            text-align: left;
            font-weight: 500;
            margin-top: 5px;
        }
        .your-referrals .second-line {
            text-align: center;
            font-size: 12px;
        }

        @media screen and (max-width: 600px) {
            .under-section {
                display: block;
                margin-top: -15px;
                margin-bottom: 25px;
            }

            .under-section td {
                padding-left: 0px;
            }
            
            .responsive-table {
                padding-bottom: 0px !important;
            }
            .responsive-table {
                margin-bottom: -45px !important;
                padding-bottom: 0px !important;
            }

            .miners-table-row .expanded, .miners-table-row .collapsed {
                display: none;
            }
            .responsive-table .under-section td {
                padding-left: 15px !important;
            }
            .responsive-table thead {
                display: none;
            }

            .responsive-table td:last-child {
                border-bottom: 1px solid #ddd;
            }

            .responsive-table th, .responsive-table td {
                border-bottom: 0px solid #ddd;
                padding: 8px;
                text-align: center;
                padding-left: 50%;
                position: relative;
            }

            .responsive-table, .responsive-table tbody, .responsive-table tr, .responsive-table td {
                display: block;
                width: 100%;
            }

            .responsive-table tr {
                margin-bottom: 15px;
            }

            .responsive-table td {
                text-align: left;
                padding-left: 50%;
                position: relative;
            }

            .responsive-table td:before {
                content: attr(data-label);
                position: absolute;
                left: 0;
                width: 50%;
                padding-left: 15px;
                font-weight: bold;
                text-align: left;
            }

            .responsive-table .empty-data {
                <!-- text-align: center; -->
            }
        }

        .dashboard-usd-to-balance-section .card-body {
            text-align: center;
        }
        .dashboard-usd-to-balance-section .card-body .in-usd {
            margin-bottom: 5px;
            font-weight: 600;
        }
        .dashboard-your-referrals-section .card {
            height: 230px;
        }
        @media(max-width: 1300px) {
            .dashboard-your-referrals-section .card {
                height: 280px;
            }
        }
        @media(max-width: 990px) {
            .dashboard-your-referrals-section .card {
                height: 280px;
            }
        }
        @media(max-width: 766px) {
            .dashboard-your-referrals-section .card {
                height: 230px;
            }
        }
    </style>
    <style>
        .toggleButton {
            height: 36px;
            border-radius: 20px;
            text-align: center;
            background-color: green;
            color: white;
            border: none;
            padding: 0px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-left: 20px;
        }

        .toggleButton.disabled {
            background-color: #a3a3a3;
            cursor: not-allowed;
        }

        .buy_cal .calculate-earnings__calculator-results-item {
            padding: 10px 0px;
            line-height: 15px;
        }
        .calculate-earnings__calculator-results-title {
            min-height: 40px;
        }
        .copy-referral-link {
            line-height: 15px;
        }
        .disabled-btn {
            background: grey;
            border-color: grey;
        }
        .verify-kyc-first {
            font-size: 20px;
            margin-top: 10px;
        }
    </style>
    <style>
    .dashboard-power-bought .symbol {
        font-size: 30px;
        margin-bottom: 10px;
    }

    .dashboard-power-bought .icon {
        width: 20px;
        /* height: 20px; */
        vertical-align: middle;
    }

    .dashboard-power-bought .coin-symbol-wrapper {
        display: flex;
        justify-content: space-between;
    }
    .dashboard-power-bought .coin-symbol-wrapper .left-side {
        display: flex;
        flex-direction: column;
        height: 75px;
        justify-content: space-between;
    }
</style>
    <script>
        function handleClickForKYC() {
            // var button = document.getElementById("toggleButton");
            var button = this;
            if (button.classList.contains("disabled")) {
                button.classList.remove("disabled");
                button.innerHTML = "ON";
                // button.style.backgroundColor = "green";
                document.getElementById("kyc_enabled").value = 1;
            } else {
                button.classList.add("disabled");
                button.innerHTML = "OFF";
                // button.style.backgroundColor = "red";
                document.getElementById("kyc_enabled").value = 0;
            }
        }
        function handleClickFor2fa() {
            // var button = document.getElementById("toggleButton");
            var button = this;
            if (button.classList.contains("disabled")) {
                button.classList.remove("disabled");
                button.innerHTML = "ON";
                // button.style.backgroundColor = "green";
                document.getElementById("enable_2fa").value = 1;
            } else {
                button.classList.add("disabled");
                button.innerHTML = "OFF";
                // button.style.backgroundColor = "red";
                document.getElementById("enable_2fa").value = 0;
            }
        }
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/web3/1.6.0/web3.min.js"></script>
    <script src = "https://static.sumsub.com/idensic/static/sns-websdk-builder.js"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <script>
        function launchWebSdk(accessToken, applicantEmail) {
            console.log(accessToken);
            let snsWebSdkInstance = snsWebSdk.init(
                    accessToken,
                    () => this.getNewAccessToken()
                )
                .withConf({
                    lang: 'en',
                    email: applicantEmail,
                    theme: 'light'
                })
                .withOptions({ addViewportTag: false, adaptIframeHeight: true})
                .on('idCheck.onStepCompleted', (payload) => {
                    console.log('onStepCompleted', payload)
                })
                .on('idCheck.onError', (error) => {
                    console.log('onError', error)
                })
                .onMessage((type, payload) => {
                    console.log('onMessage', type, payload)
                })
                .build();
            snsWebSdkInstance.launch('#sumsub-websdk-container')
        }
    </script>

    <!-- <script src="node_modules/countries-list/dist/index.umd.js"></script>
    <script>
        window.onload = function() {
            var countries = window.countriesList.getData();
            var select = document.getElementById("country");
            for (var code in countries) {
                var option = document.createElement("option");
                option.value = code;
                option.text = countries[code].name;
                select.appendChild(option);
            }
        };
    </script> -->
head>


<body class="bg-gray-100 analytics-template">
    <div id="preloader">
        <img src="{{url('frontend/images/loader.svg')}}" alt="Loading...">
    </div>
    
    @include('layouts.main.sidebar' , $site_data)

    <div class="main-content">
        @include('layouts.main.header', $site_data)
        @yield('content')
        <div class="px-3 px-xxl-5 py-3 py-lg-4 after-header">
            @include('layouts.main.footer', $site_data)
        </div>
    </div>

    @include('layouts.main.footer_includes', $site_data)
    @yield('js')


    <div class="modal global-modal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="height: 50px;">
                    <h5 class="modal-title global-modal-title" style="font-weight: 800;"></h5>
                    <button type="button" class="close" onclick="hide_global_modal()" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body global-modal-body">
                </div>
            </div>
        </div>
    </div>

    <!--Start of Tawk.to Script-->
    <script type="text/javascript">
        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
        (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='https://embed.tawk.to/65d2b5f29131ed19d96e6c34/1hmvhdfev';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
        })();
    </script>
    <!--End of Tawk.to Script-->

    <!-- metamask -->
    <!-- <script>
        if (typeof window.ethereum !== 'undefined') {
            console.log('MetaMask is installed!');
            const web3 = new Web3(window.ethereum);
        } else {
            console.log('MetaMask is not installed. Please install MetaMask to use this feature.');
        }

        async function getAccount() {
            try {
                // Request account access
                const accounts = await window.ethereum.request({ method: 'eth_requestAccounts' });
                // Use the first account
                const account = accounts[0];
                console.log('Account:', account);
            } catch (error) {
                console.error('User denied account access');
            }
        }

        // Call the function to get the account
        getAccount();

        async function getBalance(account) {
            const balance = await web3.eth.getBalance(account);
            console.log('Balance:', web3.utils.fromWei(balance, 'ether'), 'ETH');
        }

        // Assuming you have the account from the previous step
        getBalance(account);
    </script> -->
</body>
</html>
