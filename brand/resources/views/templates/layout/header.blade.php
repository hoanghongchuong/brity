<?php
    $setting = Cache::get('setting');
    $menu_top = Cache::get('menu_top');
    $cateProducts = Cache::get('cateProducts');
    $about = Cache::get('about');
    $gioithieu = DB::table('gioithieu')->orderBy('id','desc')->get();
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
    // dd($com);
?>

<header @if(@$com != 'index' && $com !='detail' && $com !='gioi-thieu' && $com !='dich-vu') class="page-child-de" @endif>
    <div class="container">
        <div class="header-nav flex-center-between">
            @if(@$com != 'index' && $com !='detail' && $com !='gioi-thieu' && $com !='dich-vu')
            <a href="{{url('')}}" title="" class="logo"><img src="{{ asset('upload/hinhanh/'.$setting->photo) }}" alt=""></a>
            @else
            <a href="{{url('')}}" title="" class="logo"><img src="{{ asset('upload/hinhanh/'.$setting->logo) }}" alt=""></a>
            @endif
            <div class="main-nav flex-center">
                <div class="navs visible-desktop">
                    <ul class="flex-center-end">
                        <li><a href="{{ url('du-an') }}" title="">@if($lang == 'vi') {{$biendich[2]->name_vi}} @elseif($lang == 'en') {{$biendich[2]->name_en}}  @endif</a> </li>
                        <li><a href="{{ url('dich-vu') }}" title="">@if($lang == 'vi') {{$biendich[8]->name_vi}} @elseif($lang == 'en') {{$biendich[8]->name_en}}  @endif</a> </li>
                        <li><a href="{{ url('gioi-thieu') }}" title="">@if($lang == 'vi') {{$biendich[5]->name_vi}} @elseif($lang == 'en') {{$biendich[5]->name_en}}  @endif</a> </li>
                        <li><a href="{{ url('tin-tuc') }}" title="">Blog</a> </li>
                        <li><a href="{{ url('khach-hang') }}" title="">@if($lang == 'vi') {{$biendich[31]->name_vi}} @elseif($lang == 'en') {{$biendich[31]->name_en}}  @endif</a> </li>
                        <li><a href="{{ url('tuyen-dung') }}" title="">@if($lang == 'vi') Tuyển dụng @elseif($lang =='en') Recruiment @endif</a> </li>
                        <li><a href="{{ url('lien-he') }}" title="">@if($lang == 'vi') {{$biendich[4]->name_vi}} @elseif($lang == 'en') {{$biendich[4]->name_en}}  @endif</a> </li>
                    </ul>
                </div>
                <div class="language">
                    <div class="language-choose">
                        @if($lang=='vi')
                        <span><img src="{{ asset('public/images/icon-vn.png')}}" alt="" title=""> </span> VN
                        @elseif($lang =='en')
                        <span><img src="{{ asset('public/images/icon-eng.png')}}" alt="" title=""> </span> EN
                        @endif
                    </div>
                    <ul class="language-list">
                        <li onclick="window.location.href='{{ url('langs/vi') }}'"><span><img src="{{ asset('public/images/icon-vn.png')}}" alt="" title=""> </span>VN</li>
                        <li onclick="window.location.href='{{ url('langs/en') }}'"><span><img src="{{ asset('public/images/icon-eng.png')}}" alt="" title=""></span> EN</li>
                    </ul>
                </div>
                <a id="cd-menu-trigger" href="#0" class=""><span class="cd-menu-icon"></span></a> 
            </div>
        </div>
    </div>
</header>
<nav id="cd-lateral-nav">
    <ul class="cd-navigation nav-dropdown">
        <li><a href="{{ url('du-an') }}" title="">@if($lang == 'vi') {{$biendich[2]->name_vi}} @elseif($lang == 'en') {{$biendich[2]->name_en}}  @endif</a> </li>
        <li><a href="{{ url('dich-vu') }}" title="">@if($lang == 'vi') {{$biendich[8]->name_vi}} @elseif($lang == 'en') {{$biendich[8]->name_en}}  @endif</a> </li>
        <li><a href="{{ url('gioi-thieu') }}" title="">@if($lang == 'vi') {{$biendich[5]->name_vi}} @elseif($lang == 'en') {{$biendich[5]->name_en}}  @endif</a> </li>
        <li><a href="{{ url('tin-tuc') }}" title="">Blog</a> </li>
        <li><a href="{{ url('khach-hang') }}" title="">@if($lang == 'vi') {{$biendich[31]->name_vi}} @elseif($lang == 'en') {{$biendich[31]->name_en}}  @endif</a> </li>
        <li><a href="{{ url('tuyen-dung') }}" title="">@if($lang == 'vi') Tuyển dụng @elseif($lang =='en') Recruiment @endif</a> </li>
        <li><a href="{{ url('lien-he') }}" title="">@if($lang == 'vi') {{$biendich[4]->name_vi}} @elseif($lang == 'en') {{$biendich[4]->name_en}}  @endif</a> </li>
    </ul>
</nav>