<?php
	$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();

?>
@if(isset($slider))
    <section class="banner">
        <div class="banner-slider owl-carousel">
            @foreach($slider as $item)
            <span><img src="{{asset('upload/hinhanh/'.$item->photo)}}" alt="" title=""></span>
            @endforeach
        </div>
    </section> 
@endif