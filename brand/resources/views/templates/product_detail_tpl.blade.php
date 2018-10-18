@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
?>

<main>
    <section class="author">
        <div class="container">
            <h1 class="text-center wow fadeInUp" data-wow-delay="0.4s">
                <span>@if($lang == 'vi') {{ $product_detail->name }} @elseif($lang =='en') {{ $product_detail->name_en }} @endif</span>
            </h1>
            <h5 class="wow fadeInUp" data-wow-delay="0.8s">@if($lang == 'vi') {!! $product_detail->mota !!} @elseif($lang =='en') {!! $product_detail->name_en !!} @endif</h5>
        </div>
    </section>
    <section class="project-detail">
        <div class="container">
            <div class="get-brand">
                <img src="{{ asset('public/images/td.jpg')}}" alt="" title="" class="img-fluid">
                <div class="brand-abs">
                    <div class="br-gco">
                        <p>
                            <img src="{{ asset('upload/product/'.$product_detail->photo)}}" alt="" title="" class="img-fluid">
                        </p>
                        <!-- <h2>{{$cateProduct->name}}</h2> -->
                    </div>
                </div>
            </div>
            <p>@if($lang == 'vi') {!! $product_detail->content !!} @elseif($lang == 'en') {!! $product_detail->content_en !!}  @endif</p>
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
    </section>
</main>
@endsection
