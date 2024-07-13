<!DOCTYPE html>
<html lang="en">
@php
$site_data["site_name"] = "CloudMinePool";
$site_data["site_logo"] = asset('frontend') . '/images/logo1.svg';
$site_data["favicon"] = asset('frontend') . '/images/favicon.png';
$settings = DB::table("settings")->first();

if($settings){
$site_data["site_name"] = @$settings->site_name;
$site_data["site_logo"] = @$settings->site_logo ? (url('/').@$settings->site_logo) : $site_data["site_logo"];
}
@endphp
<head>
    @include('layouts.home.header_includes' , $site_data)
    <title>@yield('title')</title>
    @yield('css')
    <style>
        .dropdown-menu {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-menu a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-menu a:hover {
            background: #e9ecef;
            color: rgb(30, 30, 30);
        }
        
        .dropdown-menu a:hover .dropdown-title {
            color: rgb(30, 30, 30);
        }

        .dropdown-menu.show a:hover .dropdown-title {
            color: rgb(30, 30, 30);
        }

        .dd-for-lang .dropdown-header {
            color: rgb(30, 30, 30);
        }

        .dropdown-title {
            color: rgb(30, 30, 30) !important;
        }
        .dd-for-lang {

        }

        .dd-for-lang .dropdown-menu {
            width: 170px;
            margin-top: 8px;
            border-width: 0px;
            border-radius: 10px;
            margin-left: -136px;
        }

        .dd-for-lang img.avatar {
            width: 25px;
        }

        .dd-for-lang .dropdown-footer {
        }

        .dd-for-lang .media-body {
            margin-left: 15px;
        }

        .dd-for-lang .dropdown-item {
            padding-bottom: 15px;
            padding-left: 15px;
        }

        .dd-for-lang .media {
            background: none;
        }
        .dropdown.desktop {
            display: block;
        }
        .dropdown.mobile {
            display: none;
        }

        @media (max-width: 991px) {
            .dropdown.desktop {
                display: none;
            }
            .dropdown.mobile {
                display: block;
            }
        }
    </style>
    <style>
        button.close {
            top: 5px !important;
            right: 6px !important;
            float: right;
            font-size: 2.5rem;
            font-weight: 700;
            line-height: 1;
            color: #000;
            text-shadow: 0 1px 0 #fff;
            opacity: .5;
        }

        .form-control {
            font-size: 1.5rem !important;
        }

        .simple-login-form {
            box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .15) !important;
        }

        .btn {
            font-size: 1.67rem !important;
            color: #1e1e1e !important;
            font-weight: 600 !important;
            text-transform: unset !important;
            font-family: Montserrat, sans-serif !important;
            padding: 1.39rem 2.5rem !important;
        }

        .text-black {
            color: #999999 !important;
            font-weight: 600 !important;
        }

        .miner-select-item.active,
        .irs--round .irs-from,
        .irs--round .irs-to,
        .irs--round .irs-single {
            color: #1e1e1e !important;
            font-weight: 600 !important;
        }

        .miner-select-item {
            padding-left: 0px;
            padding-right: 0px;
        }

        .btn:hover {
            -webkit-transform: unset !important;
            transform: unset !important;
        }

        .btn:before {
            content: unset !important;
        }

        .rounded-12 {
            border-radius: 0.75rem !important;
        }

        .fw-bold {
            font-weight: bold;
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

        .desktop-version {
            display: block;
        }
        .mobile-version {
            display: none;
        }
        @media screen and (max-width: 600px) {
            .app-for-ios-coming-soon {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
            .app-for-ios-coming-soon .sub-heading {

            }
            .ico-apps-img .mobile-version {
                width: 100%;
            }

            .responsive-table {
                margin-bottom: -45px !important;
                padding-bottom: 0px !important;
            }
            
            .desktop-version {
                display: none;
            }
            .ico-apps-img {
                display: flex;
                flex-direction: column;
                margin-top: -66px;
                margin-bottom: -35px;
            }
            .mobile-version {
                display: block;
            }
            .mobile-version.logo-img {
                width: 110px;
            }
            .mobile-version.logo-text {
                color: #0479f8;
                font-size: 25px;
                margin-top: 5px;
            }
            
            .responsive-table td:last-child {
                border-bottom: 1px solid #ddd;
            }

            .responsive-table th, .responsive-table td {
                border-bottom: 0px solid #ddd;
            }
            .responsive-table thead {
                display: none;
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
        @media screen and (max-width: 450px) {
            .miner-select-item {
                font-size: 11px;
            }
        }

        .top-header-area {

        }
        .top-header-area .btn {
            padding-left: 10px !important;
            padding-right: 10px !important;
        }
        .top-header-area.second {
            margin-left: 8px;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/web3/1.6.0/web3.min.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var dropdown = document.querySelector('.dropdown');
            var dropdownMenu = document.querySelector('.dropdown-menu');

            dropdown.addEventListener('click', function(event) {
                event.stopPropagation();
                dropdownMenu.classList.toggle('show');
            });

            document.addEventListener('click', function() {
                if (dropdownMenu.classList.contains('show')) {
                    dropdownMenu.classList.remove('show');
                }
            });
        });

        document.addEventListener('DOMContentLoaded', function() {
            console.log('DOMContentLoaded#1');
            var dropdown01 = document.querySelector('.dropdown.mobile');

            dropdown01.addEventListener('click', function(event) {
                console.log('.dropdown-menu.mobile > click > called');
                event.stopPropagation();
                var dropdownMenu = document.querySelector('.dropdown-menu.mobile');
                console.log('#1: dropdownMenu', dropdownMenu);
                // dropdownMenu.classList.toggle('show');
                if (!dropdownMenu.className.includes('show')) {
                    dropdownMenu.className = dropdownMenu.className + " show";
                }
            });

            document.addEventListener('click', function() {
                var dropdownMenu = document.querySelector('.dropdown-menu.mobile');
                if (dropdownMenu.classList.contains('show')) {
                    dropdownMenu.classList.remove('show');
                }
            });
        });

        document.addEventListener('DOMContentLoaded', function() {
            console.log('DOMContentLoaded#2');
            var dropdown02 = document.querySelector('.dropdown.desktop');
            console.log('DOMContentLoaded#2',dropdown02);

            dropdown02.addEventListener('click', function(event) {
                console.log('.dropdown-menu.desktop > click > called');
                event.stopPropagation();
                var dropdownMenu = document.querySelector('.dropdown-menu.desktop');
                console.log('#2: dropdownMenu', dropdownMenu);

                //dropdownMenu.classList.toggle('show');
                if (!dropdownMenu.className.includes('show')) {
                    dropdownMenu.className = dropdownMenu.className + " show";
                }

            });

            document.addEventListener('click', function() {
                var dropdownMenu = document.querySelector('.dropdown-menu.desktop');
                if (dropdownMenu.classList.contains('show')) {
                    dropdownMenu.classList.remove('show');
                }
            });
        });
    </script>
</head>


<body>
    <!-- Start preloader -->
    <div id="preloader">
        <img src="{{url('frontend/images/loader.svg')}}" alt="Loading...">
    </div>
    <!-- End preloader -->

    <!-- Top scroll -->
    <div class="top-scroll transition">
        <a href="#banner" class="scrollTo"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
    </div>

    @include('layouts.home.header', $site_data)

    @yield('content')

    @include('layouts.home.footer', $site_data)
    @include('layouts.home.footer_includes', $site_data)
    @yield('js')

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
    <script>
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
    </script>
</body>
</html>
