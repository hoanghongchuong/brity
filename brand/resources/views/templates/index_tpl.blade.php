@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$lang = Cache::get('lang');
$cateProducts = Cache::get('cateProducts');
$banner = DB::table('banner_content')->where('position',1)->get();
$lang = Cache::get('lang');
$biendich = Cache::get('biendich');
// dd($tintuc_moinhat);
?>

@include('templates.layout.slider')

<section class="blog-index">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="blog-index-txt">
                    <p><a href="{{ url('tin-tuc/'.$tintuc_moinhat->alias.'.html') }}" title="" class="dash mgl-70">Blog Design</a></p>
                    <h5 class="text-uppercase"><a href="{{ url('tin-tuc/'.$tintuc_moinhat->alias.'.html') }}" title="">@if($lang =='vi') {{ $tintuc_moinhat->name }} @elseif($lang =='en') {{ $tintuc_moinhat->name_en }} @endif</a> </h5>
                    <p>@if($lang =='vi') {{$tintuc_moinhat->mota}} @elseif($lang =='en') {{$tintuc_moinhat->mota_en}} @endif <a href="" title=""><i class="fa fa-long-arrow-right"></i></a> </p>
                </div>
            </div>
            <div class="col-md-6">
                <a href="{{ url('tin-tuc/'.$tintuc_moinhat->alias.'.html') }}" title="" class="zoom"><img src="{{ asset('upload/news/'.$tintuc_moinhat->photo)}}" alt="" title=""> </a>
            </div>
        </div>
    </div>
</section>
<section class="project">
    <div class="container">
        <div class="row">
            @foreach($news_product as $newProduct)
            <div class="col-md-4">
                <div class="project-item">
                    <a href="{{url('du-an/'.$newProduct->alias.'.html')}}" title="@if($lang =='vi'){{$newProduct->name}} @elseif($lang == 'en') {{ $newProduct->name_en }} @endif" class="zoom">
                        <img src="{{ asset('upload/product/'.$newProduct->photo)}}" alt="@if($lang =='vi'){{$newProduct->name}} @elseif($lang == 'en') {{ $newProduct->name_en }} @endif" title="@if($lang =='vi'){{$newProduct->name}} @elseif($lang == 'en') {{ $newProduct->name_en }} @endif">
                    </a>
                    <h5><a href="{{url('du-an/'.$newProduct->alias.'.html')}}" title="@if($lang =='vi'){{$newProduct->name}} @elseif($lang == 'en') {{ $newProduct->name_en }} @endif" class="dash mgl-70">@if($lang =='vi'){{$newProduct->name}} @elseif($lang == 'en') {{ $newProduct->name_en }} @endif</a> </h5>
                    <p class="pdl-70">@if($lang =='vi') {{$newProduct->mota}} @elseif($lang == 'en') {{$newProduct->mota_en}} @endif</p>
                </div>
            </div>
            @endforeach
        </div>

    </div>
</section>
<section class="blog-index">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <a href="{{url('gioi-thieu')}}" title="" class="zoom"><img src="{{ asset('upload/hinhanh/'.$about->photo)}}" alt="" title=""> </a>
            </div>
            <div class="col-md-6">
                <div class="blog-index-txt">
                    <p><a href="{{url('gioi-thieu')}}" title="" class="dash mgl-70">@if($lang == 'vi') {{$biendich[5]->name_vi}} @elseif($lang == 'en') {{$biendich[5]->name_en}}  @endif</a></p>
                    <h5 class="text-uppercase"><a href="{{url('gioi-thieu')}}" title="">{{ $about->name }}</a> </h5>
                    <p>@if($lang == 'vi') {!! $about->mota !!} @elseif($lang == 'en') {!! $about->mota_en !!} @endif <a href="{{url('gioi-thieu')}}" title="Chi tiết"><i class="fa fa-long-arrow-right"></i></a></p>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
