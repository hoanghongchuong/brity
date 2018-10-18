@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
?>
<section class="project-tab">
    <div class="container">
        <ul class="nav nav-tabs flex-center-between" role="tablist">
            @foreach($cate_pro as $k=>$cate)
            <li>
                <a class="nav-link @if($k == 0)active @endif" href="#tab-{{$k}}" role="tab" data-toggle="tab">
                    <span class="dash mgl-70">@if($lang =='vi') {{$cate->name}} @elseif($lang =='en') {{$cate->name_en}} @endif</span>
                </a>
            </li>
            @endforeach
            <!-- <li>
                <a class="nav-link" href="#tab-2" role="tab" data-toggle="tab">
                    <span class="dash mgl-70">USER INTERFACE</span>
                </a>
            </li>
            <li>
                <a class="nav-link" href="#tab-3" role="tab" data-toggle="tab">
                    <span class="dash mgl-70">MARKETING</span>
                </a>
            </li> -->
        </ul>
    </div>
</section>
<!-- Tab panes -->
<div class="tab-content">
    @foreach($cate_pro as $k=>$cate)
    <div role="tabpanel" class="tab-pane fade @if($k==0) in show active @endif" id="tab-{{$k}}">
        <section class="project">
            <div class="container">
                <?php $products = DB::table('products')->where('cate_id', $cate->id)->orderBy('id', 'desc')->get(); ?>
                <div class="row">
                    @foreach($products as $item)
                    <div class="col-md-4">
                        <div class="project-item">
                            <a href="{{ url('du-an/'.$item->alias.'.html') }}" title="" class="zoom">
                                <img src="{{asset('upload/product/'.$item->photo)}}" alt="" title="">
                            </a>
                            <h5><a href="{{ url('du-an/'.$item->alias.'.html') }}" title="" class="dash mgl-70">@if($lang =='vi') {{$item->name}} @elseif($lang =='en') {{$item->name_en}} @endif</a> </h5>
                            <p class="pdl-70">@if($lang =='vi') {!! $item->mota !!} @elseif($lang =='en') {!! $item->mota_en !!} @endif</p>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </section>
    </div>
    @endforeach
</div>
@endsection
