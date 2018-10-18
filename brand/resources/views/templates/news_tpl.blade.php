@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
?>

<section class="news">
    <div class="hot-trend">
        <div class="container">
            <div class="relative trend">
                <img src="{{ asset('public/images/trend.jpg')}}" alt="" title="">
                <div class="trend-abs flex-center">
                    <div class="trend-txt">
                       <div class="trend-t">
                           <p>New</p>
                           <p>trends design</p>
                           <p>2018</p>
                       </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="news-list">
        <div class="container">
            <h1><span class="mgl-70 dash">Blog</span> </h1>
            <div class="row">
                <div class="col-md-9">
                    @foreach($tintuc as $item)
                    <div class="news-item">
                        <div class="row">
                            <div class="col-md-6">
                                <a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title="@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif" class="zoom"><img src="{{asset('upload/news/'.$item->photo)}}" alt="@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif" title="@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif"> </a>
                            </div>
                            <div class="col-md-6">
                                <h4><a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title="@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif">@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif</a> </h4>
                                <p class="time">Tin tức  — {{date('d/m/Y', strtotime('$item->created_at'))}}</p>
                                <p>@if($lang == 'vi') {{$item->mota}} @elseif($lang == 'en') {{$item->mota_en}} @endif
                                <a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title=""><i class="fa fa-long-arrow-right"></i> </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    <div class="paginations">
                        {!! $tintuc->links() !!}
                    </div>
                </div>
                <div class="col-md-3 visible-desktop">
                    <div class="sticky-top">
                        <div class="fanpage">
                            <!-- <img src="{{ asset('public/images/ads.jpg')}}" alt="" title=""> -->
                            <div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-width="270px" data-height="200px" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/facebook" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote></div>
                        </div>
                        <?php $qc =  DB::table('lienket')->where('com', 'tieu-chi')->get(); ?>
                        @foreach($qc as $q)
                        <p class="mgt-20"><img src="{{ asset('upload/hinhanh/'.$q->photo)}}" alt="" title=""></p>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection