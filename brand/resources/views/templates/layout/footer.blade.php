<?php
    $setting = Cache::get('setting');
    $lang = Cache::get('lang');
    $about = Cache::get('about');
    $cateProducts = Cache::get('cateProducts');
?>
<footer>
    <section class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-4 flex-center">
                    <div class="some-links">
                        <ul class="flex-center">
                            <li><a href="{{ $setting->facebook }}" title="" class="fa fa-facebook"></a></li>
                            <li><a href="{{ $setting->twitter }}" title="" class="fa fa-twitter"></a></li>
                            <li><a href="{{ $setting->skype }}" title="" class="fa fa-linkedin"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 flex-center">
                    <p>© 2018 GCO Brands. All rights reserved</p>
                </div>
                <div class="col-md-4">
                    <div class="newsletter-signup">
                        <form id="mailchimp-subscribe" class="flex-center" action="{{ route('postNewsletter') }}" method="POST">
                            {{ csrf_field() }}
                            <input type="email" name="txtEmail" placeholder="Enter your email for newsletter">
                            <button type="submit">
                                <i class="fa fa-send"></i>
                            </button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>
</footer>
<!-- <div class="nav-fixed">
    <div class="container">
        <div class="flex-center-between nav-fixed-header">
            <a href="{{url('')}}" title="" class="logo"><img src="{{ asset('upload/hinhanh/'.$setting->photo) }}" alt="" title=""> </a>
            <a href="" title="" class="closeMenu-btn"><img src="{{ asset('public/images/menu-close.png')}}" alt="" title=""> </a>
        </div>
        <div class="flex-between nav-fixed-content">
            <div class="menu">
                <ul>
                    <li><a href="{{ url('du-an') }}" title="">@if($lang == 'vi') {{$biendich[2]->name_vi}} @elseif($lang == 'en') {{$biendich[2]->name_en}}  @endif</a> </li>
                    <li><a href="{{ url('dich-vu') }}" title="">@if($lang == 'vi') {{$biendich[8]->name_vi}} @elseif($lang == 'en') {{$biendich[8]->name_en}}  @endif</a> </li>
                    <li><a href="{{ url('gioi-thieu') }}" title="">@if($lang == 'vi') {{$biendich[5]->name_vi}} @elseif($lang == 'en') {{$biendich[5]->name_en}}  @endif</a> </li>
                    <li><a href="{{ url('tin-tuc') }}" title="">Blog</a> </li>
                    <li><a href="{{ url('khach-hang') }}" title="">@if($lang == 'vi') {{$biendich[31]->name_vi}} @elseif($lang == 'en') {{$biendich[31]->name_en}}  @endif</a> </li>
                    <li><a href="{{ url('tuyen-dung') }}" title="">@if($lang == 'vi') Tuyển dụng @elseif($lang =='en') Recruiment @endif</a> </li>
                    <li><a href="{{ url('lien-he') }}" title="">@if($lang == 'vi') {{$biendich[4]->name_vi}} @elseif($lang == 'en') {{$biendich[4]->name_en}}  @endif</a> </li>
                </ul>
            </div>
            <div class="pj-list">
                <h5><span class="dash">Dự án</span></h5>
                <div class="pj-list-slider owl-carousel slider-general">
                    <div class="item">
                        <ul>
                            <li><a href="" title="">Thiết kế Logo</a> </li>
                            <li><a href="" title="">Ứng dụng thương hiệu</a> </li>
                            <li><a href="" title="">Hệ thống nhận diện trực quan</a> </li>
                            <li><a href="" title="">Nhận diện thương hiệu công ty</a> </li>
                            <li><a href="" title="">Bao bì & thiết kế nhãn</a> </li>
                            <li><a href="" title="">Hình ảnh thương hiệu</a> </li>
                            <li><a href="" title="">Website</a> </li>
                            <li><a href="" title="">Landing page</a> </li>
                            <li><a href="" title="">App Mobile</a> </li>
                            <li><a href="" title="">App Icon</a> </li>
                            <li><a href="" title="">Thiết kế ứng dụng</a> </li>
                            <li><a href="" title="">Quảng cáo điện tử</a> </li>
                        </ul>
                    </div>
                    <div class="item">
                        <ul>
                            <li><a href="" title="">Thiết kế Logo</a> </li>
                            <li><a href="" title="">Ứng dụng thương hiệu</a> </li>
                            <li><a href="" title="">Hệ thống nhận diện trực quan</a> </li>
                            <li><a href="" title="">Nhận diện thương hiệu công ty</a> </li>
                            <li><a href="" title="">Bao bì & thiết kế nhãn</a> </li>
                            <li><a href="" title="">Hình ảnh thương hiệu</a> </li>
                            <li><a href="" title="">Website</a> </li>
                            <li><a href="" title="">Landing page</a> </li>
                            <li><a href="" title="">App Mobile</a> </li>
                            <li><a href="" title="">App Icon</a> </li>
                            <li><a href="" title="">Thiết kế ứng dụng</a> </li>
                            <li><a href="" title="">Quảng cáo điện tử</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=124844007858325";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>