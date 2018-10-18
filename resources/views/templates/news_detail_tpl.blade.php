@extends('index')
@section('content')

<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
    $banner = DB::table('banner_content')->where('position', 2)->first();
    $projectHots = DB::table('products')->where('noibat',1)->take(5)->orderBy('id','desc')->get();
?>
 <main>
    <section class="join">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="join-title">
                        <p><span class="mgl-70 dash">Blog</span></p>
                        <p class="mg-20">Blog  —  {{ date('d/m/Y', strtotime($news_detail->created_at)) }}</p>
                        <p class="news-social">
                            <div class="addthis_toolbox addthis_default_style" style="margin-top:10px;">

                                <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>

                                <a class="addthis_button_tweet"></a>

                                <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>

                                <a class="addthis_counter addthis_pill_style"></a>

                            </div>

                            <script type="text/javascript">var addthis_config = {"data_track_addressbar":false};</script>

                            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52843d4e1ff0313a"></script>
                        </p>
                    </div>
                    <div class="portfolio sticky-top">
                        <h3><span>Portfolio</span></h3>
                        @foreach($projectHots as $hot)
                        <div class="port-item">
                            <div class="row">
                                <div class="col-md-6">
                                    <a href="{{ url('du-an/'.$hot->alias.'.html') }}" title="" class="zoom"><img src="{{asset('upload/product/'.$hot->photo)}}" alt="" title=""></a>
                                </div>
                                <div class="col-md-6">
                                    <div class="port-text">
                                        <h4><a href="{{ url('du-an/'.$hot->alias.'.html') }}" title="">{{$hot->name}}</a> </h4>
                                        <!-- <ul>
                                            <li>branding</li>
                                            <li>package design</li>
                                            <li>print</li>
                                        </ul> -->
                                        <div class="" style="font-size: 14px;">{!! $hot->huongdan !!}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="col-md-8 offset-md-1">
                    <div class="join-content">
                        <h1>{{ $news_detail->name }}</h1>
                        <p class="time">Tin tức  — {{ date('d/m/Y', strtotime($news_detail->created_at)) }}</p>
                       {!! $news_detail->content !!}
                        <p><div class="fb-comments" data-href="{{URL::Current()}}"  data-numposts="2"></div></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
@endsection
