@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');    
?>

<main>
   
    <section class="author">
        <div class="container">
            <div class="row">
                <div class="col-md-6 flex-center">
                    <div class="author-left">
                        {!! $product_detail->mota !!}
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="author-right">
                        <!-- <h1 class="wow fadeInUp" data-wow-delay="0.4s"><span class="font-weight-bold text-uppercase">Branding GCO Group</span></h1>
                        <p class="wow fadeInUp" data-wow-delay="1.2s">GCO Group: Digital Marketing, Web Developement, E-Learning, Online Media và E-Commerce</p>
                        <p class="wow fadeInUp" data-wow-delay="1.6s">Client: GCO Group</p>
                        <ul class="wow fadeInUp" data-wow-delay="1.6s">
                            <li><span>Trẻ trung năng động</span></li>
                            <li><span>Trẻ trung năng động</span></li>
                            <li><span>Trẻ trung năng động</span></li>
                            <li><span>Trẻ trung năng động</span></li>
                        </ul>
                        <p class="wow fadeInUp" data-wow-delay="2s">Location: Ha Noi</p>
                        <p class="wow fadeInUp" data-wow-delay="2.4s">Scope of works: Brand Applications, Visual Identity System</p> -->
                        {!! $product_detail->quatang !!}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="project-detail">
        <div class="container">
            
            <div class="list-p">
                <!-- <p class="fade-in">@if($lang == 'vi') {!! $product_detail->content !!} @elseif($lang == 'en') {!! $product_detail->content_en !!}  @endif</p> -->
            </div>
            @foreach($albums_project as $item)
            <?php $photo = json_decode($item->photo); ?>
            @if($item->type_view == 1)
                @foreach($photo as $image)
                <div class="row fade-in row-fix mt10">
                    <div class="col-md-12">
                        <img src="{{asset('upload/product/'.$image->photo)}}" alt="" title="" class="img-fluid">
                    </div>
                </div>
                @endforeach  
            @elseif($item->type_view == 2)
                <div class="row fade-in row-fix">
                    @foreach($photo as $k=>$image)
                    <div class="col-md-6 col-xs-12 flex-img mt10">
                        <div class="img-fix">
                            <img src="{{asset('upload/product/'.$image->photo)}}" alt="" title="" class="img-fluid">
                        </div>
                    </div>
                    <?php if($k==1) break; ?>
                    @endforeach
                </div>
            @elseif($item->type_view == 3)                       
                <div class="row fade-in row-fix">
                    <div class="col-md-6 col-xs-12 ">
                        <div class="img-fix">
                            <img src="{{asset('upload/product/'.@$photo[2]->photo)}}" alt="" title="" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12 mt10">
                        <div class="img-fix1" style="padding-bottom: 10px;">
                            <img src="{{asset('upload/product/'.@$photo[1]->photo)}}" alt="" title="" class="img-fluid">
                        </div>
                        <div class="img-fix1">
                            <img src="{{asset('upload/product/'.@$photo[0]->photo)}}" alt="" title="" class="img-fluid">
                        </div>
                    </div>
                </div>
            @elseif($item->type_view == 4)               
                <div class="row fade-in row-fix">
                    <div class="col-md-6 col-xs-12 mt10">
                        <div class="img-fix1" style="padding-bottom: 10px;">
                            <img src="{{asset('upload/product/'.@$photo[0]->photo)}}" alt="" title="" class="img-fluid">
                        </div>
                        <div class="img-fix1">
                            <img src="{{asset('upload/product/'.@$photo[1]->photo)}}" alt="" title="" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12 mt10">
                        <div class="img-fix">
                            <img src="{{asset('upload/product/'.@$photo[2]->photo)}}" alt="" title="" class="img-fluid">
                        </div>
                    </div>                    
                </div>
            @endif
            @endforeach

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
