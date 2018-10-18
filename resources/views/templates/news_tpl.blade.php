@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
    $post_first = DB::table('news')->where('com','tin-tuc')->where('status',1)->first();
?>

<main>
    <section class="news">
        <div class="news-list">
            <div class="container">
                <div class="top-news">
                    <div class="row">
                        <div class="col-md-4 flex-center">
                            <div class="news-slogan">
                                <h3><span class="mgl-70 dash">Blog</span> </h3>
                                <h1>Xây dựng <br> thương hiệu <br> & thiết kế đồ họa</h1>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="news-item">
                                <div class="row">
                                    <div class="col-md-12">
                                        <a href="{{ url('tin-tuc/'.$post_first->alias.'.html') }}" title="" class="zoom"><img src="{{asset('upload/news/'.$post_first->photo)}}" alt="" title=""> </a>
                                        <p class="time">Tin tức  — {{date('d/m/Y', strtotime($post_first->created_at))}}</p>
                                        <h4><a href="{{ url('tin-tuc/'.$post_first->alias.'.html') }}" title="">{{$post_first->name}}</a></h4>
                                        <p>{!! $post_first->mota !!}
                                            <a href="{{ url('tin-tuc/'.$post_first->alias.'.html') }}" title=""><i class="fa fa-long-arrow-right"></i> </a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    @foreach($tintuc as $item)
                    <div class="col-md-4">
                        <div class="news-item">
                            <div class="row">
                                <div class="col-md-12">
                                    <a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title="" class="zoom"><img src="{{asset('upload/news/'.$item->photo)}}" alt="@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif" title="@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif"> </a>
                                    <p class="time">Tin tức  — {{date('d/m/Y', strtotime($item->created_at))}}</p>
                                    <h4><a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title="">@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif</a> </h4>
                                    <p>@if($lang == 'vi') {{$item->mota}} @elseif($lang == 'en') {{$item->mota_en}} @endif
                                        <a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title="@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif"><i class="fa fa-long-arrow-right"></i> </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="pagi">
                    <div class="paginations">
                        {!! $tintuc->links() !!}
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>

@endsection