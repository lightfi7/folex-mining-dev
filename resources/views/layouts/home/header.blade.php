<header class="transition">
    <div class="container">
        <div class="row flex-align" >
            <div class="col-lg-2 col-md-2 col-sm-3 col-xs-3">
                <div class="logo">
                    <a href="#"><img src="{{$site_data["site_logo"]}}" style="max-height:55px !important" class="transition" alt="{{$site_data["site_name"]}}"></a>
                </div>
            </div>
            <div class="col-lg-10 col-md-10 col-sm-9 col-xs-9 text-right">
                <div class="dropdown mobile grid-option dd-for-lang" style="width:25px; margin-right: 15px;">
                    <a href="#" class="text-dark ms-4 ms-xxl-5 h5 mb-0" data-bs-toggle="dropdown" aria-expanded="false" id="grid">
                        <img src='{{@languages()[session()->get("locale")][1]}}' height=33 >
                    </a>
                    <div class="dropdown-menu mobile dropdown-menu-end py-0" style='' aria-labelledby="grid" style="">
                        <div class="dropdown-header d-flex align-items-center px-4 py-2">
                            <span class="fs-16 Montserrat-font font-weight-semibold text-black-600" style='font-size: 16px; font-weight: 600;color: rgb(30, 30, 30);font-family: Montserrat, sans-serif;padding-top: 11px !important; padding-bottom: 11px !important;'>{{__("Set Language")}}</span>
                        </div>
                        <div class="dropdown-footer text-center py-2 border-top border-gray-50">
                            @foreach (languages() as $locale => $lang)
                                <a href="{{url('lang/$locale')}}" class="dropdown-item text-wrap">
                                    <div class="media align-items-center">
                                        <span class="me-3">
                                            <img class="avatar avatar-xs rounded-0" src="{{$lang[1]}}" alt="{{$lang[0]}}">
                                        </span>
                                        <div class="media-body" style='text-align: left;'>
                                            <span class="fs-16 font-weight-semibold dropdown-title">{{$lang[0]}}</span>
                                        </div>
                                    </div>
                                </a>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="menu-toggle">
                    <span></span>
                </div>
                <div class="menu">
                    @if(url()->current() == url('/'))
                    <ul class="d-inline-block">
                        <li><a href="#">{{__("Home")}}</a></li>
                        <li><a href="#calculator">{{__("Calculator")}}</a></li>
                        <li><a href="#faq">{{__("FAQ")}}</a></li>
                    </ul>
                    @else
                    <ul class="d-inline-block">
                        <li><a href="{{url('/')}}">{{__("Home")}}</a></li>
                        <li><a href="{{url('/')}}#calculator">{{__("Calculator")}}</a></li>
                        <li><a href="{{url('/')}}#faq">{{__("FAQ")}}</a></li>
                    </ul>
                     @endif
                     <div class="dropdown desktop grid-option dd-for-lang" style="width:25px; margin-right: 15px;">
                            <a href="#" class="text-dark ms-4 ms-xxl-5 h5 mb-0" data-bs-toggle="dropdown" aria-expanded="false" id="grid">
                                <img src='{{@languages()[session()->get("locale")][1]}}' height=33 >
                            </a>
                            <div class="dropdown-menu desktop dropdown-menu-end py-0" style='' aria-labelledby="grid" style="">
                                <div class="dropdown-header d-flex align-items-center px-4 py-2">
                                    <span class="fs-16 Montserrat-font font-weight-semibold text-black-600" style='font-size: 16px; font-weight: 600;color: rgb(30, 30, 30);font-family: Montserrat, sans-serif;padding-top: 11px !important; padding-bottom: 11px !important;'>{{__("Set Language")}}</span>
                                </div>
                                <div class="dropdown-footer text-center py-2 border-top border-gray-50">
                                    @foreach (languages() as $locale => $lang)
                                        <a href="{{url("lang/$locale")}}" class="dropdown-item text-wrap">
                                            <div class="media align-items-center">
                                                <span class="me-3">
                                                    <img class="avatar avatar-xs rounded-0" src="{{$lang[1]}}" alt="{{$lang[0]}}">
                                                </span>
                                                <div class="media-body" style='text-align: left;'>
                                                    <span class="fs-16 font-weight-semibold dropdown-title">{{$lang[0]}}</span>
                                                </div>
                                            </div>
                                        </a>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    @if (Auth::check())
                    <div class="d-inline-block top-header-area">
                        <a href="{{ route('dashboard')}}" class="btn">{{__("Dashboard")}}</a>
                    </div>
                    @endif
                    @if (!Auth::check())
                    <div class="d-inline-block top-header-area second">
                        <a href="{{ route('login')}}" class="btn btn-lg mr-2">{{__("Login")}}</a>
                        <a href="{{url('register')}}" class="btn btn-lg">{{__("Register")}}</a>
                    </div>
                    @endif

                    <div class="d-inline-block top-header-area">

                <!-- Adding Telegram and WhatsApp icons -->
                <li>
            <a class="nav-link" href="https://t.me/your-telegram-invite-link" target="_blank">
                <i class="fa fa-telegram"></i> Telegram
            </a>
        </li>
        <li>
            <a class="nav-link" href="https://wa.me/your-whatsapp-invite-link" target="_blank">
                <i class="fa fa-whatsapp"></i> WhatsApp
            </a>
        </li>

                </div>

                </div>              
            </div>
        </div>
    </div>
</header>
