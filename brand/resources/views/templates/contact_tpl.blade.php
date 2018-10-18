@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = DB::table('about')->where('com', 'lien-he')->first();
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
?>
<!-- <header class="page-child-de">
        <div class="container">
            <div class="header-nav flex-center-between">
                <a href="{{url('')}}" title="" class="logo"><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="" title=""> </a>
                <div class="main-nav flex-center">
                    <div class="language">
                        <select>
                            <option>Vietnamese</option>
                            <option>English</option>
                        </select>
                    </div>
                    <a href="" title="" class="showMenu-btn"><img src="{{ asset('public/images/menu-black.png')}}" alt="" title=""> </a>
                </div>
            </div>
        </div>
    </header> -->
<section class="page-title">
    <div class="container">
        <div class="title">
            <p><span class="mgl-70 dash">@if($lang == 'vi') {{$biendich[4]->name_vi}} @elseif($lang == 'en') {{$biendich[4]->name_en}}  @endif</span></p>
            <h1 class="title-h">@if($lang == 'vi') {!! $about->mota !!} @elseif($lang == 'en') {!! $about->mota_en !!} @endif</h1>
        </div>
    </div>
</section>
<section class="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>@if($lang == 'vi') {!! $about->content !!} @elseif($lang == 'en') {!! $about->content_en !!} @endif</h2>
            </div>
            <div class="col-md-6">
                <div class="company">
                    <p><a href="" title=""><img src="{{ asset('upload/hinhanh/'.$setting->photo)}}" alt="" title=""> </a> </p>
                    <p><i class="fa fa-map-marker"></i> @if($lang == 'vi') {{ $setting->address }} @elseif($lang == 'en') {{ $setting->address_en }} @endif</p>
                    <p><i class="fa fa-phone"></i> {{$setting->phone}}</p>
                    <p><i class="fa fa-envelope"></i> {{$setting->email}}</p>
                    <p><i class="fa fa-skype"></i> {{$setting->skype}}</p>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
