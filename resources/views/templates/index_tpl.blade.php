@extends('index')
@section('content')

    <?php
    $setting = Cache::get('setting');
    $lang = Cache::get('lang');
    $cateProducts = Cache::get('cateProducts');
    $banner = DB::table('banner_content')->where('position',1)->get();
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
    $products = DB::table('products')->take(6)->orderBy('id', 'desc')->get();
    ?>
    @include('templates.layout.slider')

    <section class="blog-index">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <a href="{{url('gioi-thieu')}}" title="" class="zoom"><img src="{{ asset('upload/hinhanh/'.$about->photo)}}" alt="" style="height: 100%;" title=""> </a>
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
  
    <section class="project">
        <div class="container">

            @for($i = 0; $i < count($products); $i++)
                <div class="project-item">
                    <div class="row">
                        <div class="col-md-6 col-image col-image-2 @if(@$i % 2 == 0) order-2  @endif" >
                            <a href="{{url('du-an/'.$products[$i+1]->alias.'.html')}}" title="" class="zoom" style="background: url('<?=asset('upload/product/'.@$products[$i+1]->photo)?>') no-repeat center center /cover">
                                <img src="{{asset('upload/product/'.@$products[$i+1]->photo)}}" alt="" title="">
                                <div class="pj-text flex-center-center">
                                    <div class="text-inn text-center">
                                        <h5><span>{{@$products[$i+1]->name}}</span></h5>
                                        <p>{{@$products[$i+1]->huongdan}}</p>
                                    </div>
                                </div>
                            </a>
                            <a href="{{url('du-an/'.@$products[$i+2]->alias.'.html')}}" title="" class="zoom" style="background: url('<?=asset('upload/product/'.@$products[$i+2]->photo)?>') no-repeat center center /cover">
                                <img src="{{asset('upload/product/'.@$products[$i+2]->photo)}}" alt="" title="">
                                <div class="pj-text flex-center-center">
                                    <div class="text-inn text-center">
                                        <h5><span>{{@$products[$i+2]->name}}</span></h5>
                                        <p>{{@$products[$i+2]->huongdan}}</p>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="col-md-6 col-image col-image-1">
                            <a href="{{url('du-an/'.@$products[$i]->alias.'.html')}}" title="" class="zoom" style="background: url('<?=asset('upload/product/'.@$products[$i]->photo)?>') no-repeat center center /cover">
                                <img src="{{asset('upload/product/'.@$products[$i]->photo)}}" alt="" title="">
                                <div class="pj-text flex-center-center">
                                    <div class="text-inn text-center">
                                        <h5><span>{{ @$products[$i]->name }}</span></h5>
                                        <p>{{@$products[$i]->huongdan}}</p>
                                    </div>
                                </div>
                            </a>
                        </div>

                    </div>
                </div>
                <?php
                @$i += 2;
                ?>
        @endfor
        <!-------------------------------->

  

        </div>
    </section>
    <section class="blog-index fade-in">
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
@endsection
