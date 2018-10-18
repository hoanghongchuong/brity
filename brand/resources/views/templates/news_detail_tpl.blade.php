@extends('index')
@section('content')

<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
?>
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
            </div>
            <div class="col-md-9">
                <div class="join-content">
                    <h1>@if($lang == 'vi') {{ $news_detail->name }} @elseif($lang == 'en') {{ $new_detail->name_en }} @endif</h1>
                    <div class="">
                         @if($lang == 'vi') {!! $news_detail->content !!} @elseif ($lang == 'en') {!! $news_detail->content_en !!} @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
