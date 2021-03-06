@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
    $about = DB::table('about')->where('com', 'gioi-thieu')->first();
?>
<section class="about-us">
    <div class="container">
        <h1><span class="mgl-70 dash">@if($lang == 'vi') {{$biendich[5]->name_vi}} @elseif($lang == 'en') {{$biendich[5]->name_en}}  @endif</span></h1>
        <div class="row">
            <div class="col-md-10">
                <p>@if($lang == 'vi') {!! $about->mota !!} @elseif($lang =='en') {!! $about->mota_en !!} @endif</p>
            </div>
        </div>
    </div>
</section>
<section class="team">
    <div class="container">
        <ul id="og-grid" class="og-grid">
            <!-- @foreach($members as $item)
            <li>
                <a href="" data-largesrc="{{ asset('upload/banner/'.$item->photo)}}" data-title="{{$item->name}}" data-description="{{$item->des}}">
                    <img src="{{ asset('upload/banner/'.$item->photo)}}" alt="img01"/>
                    <h4 class="text-center">
                        <span>{{$item->name}}</span>
                        <span class="text-center>"{{$item->position}}</span>
                    </h4>
                </a>                
            </li>
            @endforeach -->
            @foreach($members as $item)
            <li>
                <a href="javascript:;" class="no-hover" data-largesrc="{{ asset('upload/banner/'.$item->photo)}}" data-title="{{$item->name}}" data-description="{{$item->des}}">
                    <span class="zoom"><img src="{{ asset('upload/banner/'.$item->photo)}}" alt="img01"/></span>
                    <h4 class="text-center">{{$item->name}}</h4>
                    <p class="text-center">{{$item->position}}</p>
                </a>
            </li>
            @endforeach
        </ul>
    </div>
</section>
@endsection
