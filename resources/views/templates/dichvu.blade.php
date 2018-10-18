@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
?>
<main>
    <section class="service-kind">
        <div class="container">
            <div class="row">
            @foreach($categories as $k=>$cate)
                <div class="col-md-4">
                    <div class="service-item">
                        <div class="ser-title">
                            <span class="number">0{{$k+1}}</span>
                            <span>
                               @if($lang =='vi') {{$cate->name}} @elseif($lang =='en') {{$cate->name_en}} @endif
                            </span>
                        </div>
                        <ul>
                            <?php $cateChild = DB::table('news_categories')->where('parent_id', $cate->id)->where('com', 'dich-vu')->get(); ?>
                            @foreach($cateChild as $child)
                            <li>
                                <a href="{{url('dich-vu/'.$child->alias)}}" style="color:#fff">@if($lang =='vi') {{$child->name}} @elseif($lang =='en') {{$child->name_en}} @endif </a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            @endforeach
            </div>
        </div>
    </section>
    <section class="progess">
        <div class="container">
            <h1>
                <span class="mgl-70 dash text-uppercase">@if($lang =='vi') {!! $quytrinh->name !!} @elseif($lang =='en') {{ $quytrinh->name_en }} @endif</span>
            </h1>
            <div class="row">
                <div class="col-md-10">
                    <p>@if($lang =='vi') {!! $quytrinh->mota !!} @elseif($lang =='en') {!! $quytrinh->mota_en !!} @endif</p>
                </div>
            </div>
            @foreach($tintuc as $k => $item)
            <div class="progess-item">
                <div class="row">
                    <div class="col-md-6 @if($k % 2 != 0) order-2 @endif flex-center">
                        <div class="progess-text">
                            <h4>
                                <span class="mgl-70 dash text-uppercase"> @if($lang =='vi') {{$item->name}} @elseif($lang =='en') {{ $item->name_en }} @endif</span>
                            </h4>
                            <p>
                                @if($lang =='vi') {!! $item->content !!} @elseif($lang =='en') {!! $item->content_en !!} @endif
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="progess-image">
                            <img src="{{ asset('upload/news/'.$item->photo)}}" alt="" title="" class="img-fluid">
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            
            
        </div>
    </section>
</main>

@endsection