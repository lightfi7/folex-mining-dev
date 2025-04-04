<footer class="bg-pattern lightskyblue ptb-100">
    <div class="container">
        <div class="footer">
            <div class="row">
                <div class="col-lg-12 col-md-12 text-center">
                    <div class="footer-logo pb-25">
                        <a href="#"><img src="{{$site_data["site_logo"]}}" style="max-height:55px !important" alt="{{$site_data["site_name"]}}"></a>
                    </div>
                    <div class="footer-icon">
                    <ul>
                            
                            <li><a target="_blank" href="https://t.me/cloudminepoolgroup"><i class="fa fa-telegram" aria-hidden="true"></i></a></li>
                                                       <li><a target="_blank" href="https://chat.whatsapp.com/JrDOCeeR6h0GtzcV5Imi9c"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
                                                   </ul>
                           
                    </div>
                </div>
            </div>
        </div>

        <div class="footer {{@(auth()->user()->role_id) == 3 || !auth()->check() ? '' : 'd-none'}}" style='padding-bottom: 30px; padding-top: 30px;'>
            <div class="row">
                <div class="col-lg-12 col-md-12 text-center">
                <footer>
    <div class="row">
        <div class="col-lg-12 col-md-12 text-center">
            <a href='{{url('lang/en')}}' class='text-primary {{session()->get('locale') == "en" ? "fw-bold" : ""}}'>{{__("English")}}</a> |
            <a href='{{url('lang/de')}}' class='text-primary {{session()->get('locale') == "de" ? "fw-bold" : ""}}'>{{__("German")}}</a>|
            <a href='{{url('lang/fr')}}' class='text-primary {{session()->get('locale') == "fr" ? "fw-bold" : ""}}'>{{__("French")}}</a>|
            <a href='{{url('lang/es')}}' class='text-primary {{session()->get('locale') == "es" ? "fw-bold" : ""}}'>{{__("Spanish")}}</a>|
            <a href='{{url('lang/ru')}}' class='text-primary {{session()->get('locale') == "ru" ? "fw-bold" : ""}}'>{{__("Russian")}}</a>|
            <a href='{{url('lang/pt')}}' class='text-primary {{session()->get('locale') == "pt" ? "fw-bold" : ""}}'>{{__("Portuguese")}}</a>|
            <a href='{{url('lang/it')}}' class='text-primary {{session()->get('locale') == "it" ? "fw-bold" : ""}}'>{{__("Italian")}}</a>|
            <a href='{{url('lang/ar')}}' class='text-primary {{session()->get('locale') == "ar" ? "fw-bold" : ""}}'>{{__("Arabic")}}</a>|
            <a href='{{url('lang/be')}}' class='text-primary {{session()->get('locale') == "be" ? "fw-bold" : ""}}'>{{__("Bengali")}}</a>|
            <a href='{{url('lang/hi')}}' class='text-primary {{session()->get('locale') == "hi" ? "fw-bold" : ""}}'>{{__("Hindi")}}</a>|
            <a href='{{url('lang/ur')}}' class='text-primary {{session()->get('locale') == "ur" ? "fw-bold" : ""}}'>{{__("Urdu")}}</a>
        </div>
    </div>
</footer>
                </div>
            </div>
        </div>
        
        <div class="copyright">
            <div class="row">
                <div class="col-lg-6">
                    <p>{{$site_data["site_name"]}} © {{__("All Rights Reserved")}}.</p>
                </div>
                <div class="col-lg-6">
                    <ul>
                        <li><a href="{{url('terms')}}">{{__("Terms & Condition")}}</a></li>
                        <li><a href="{{url('privacy')}}">{{__("Privacy Policy")}}</a></li>
                        <li><a href="mailto:support@cloudminepool.com">{{__("Contact Us")}}</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>