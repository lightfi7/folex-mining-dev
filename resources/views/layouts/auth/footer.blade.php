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