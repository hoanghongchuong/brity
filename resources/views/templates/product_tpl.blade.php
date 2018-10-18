@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
    $products = DB::table('products')->orderBy('id', 'desc')->get();
?>

<main>
    
    <section class="project">
        <div class="container">
            @for($i = 0; $i < count($products); $i++)
            <div class="project-item">
                <div class="row">
                    <div class="col-md-6 col-image col-image-2 @if(@$i % 2 == 0) order-2  @endif">
                        <a href="{{url('du-an/'.$products[$i]->alias.'.html')}}" style="background: url('<?=asset('upload/product/'.@$products[$i]->photo)?>') no-repeat center center /cover" class="zoom">
                            <img src="{{asset('upload/product/'.@$products[$i]->photo)}}" alt="" title="">
                            <div class="pj-text flex-center-center">
                                <div class="text-inn text-center">
                                    <h5><span>{{@$products[$i]->name}}</span></h5>
                                    <p>{{@$products[$i]->huongdan}}</p>
                                </div>
                            </div>
                        </a>
                        <a href="{{url('du-an/'.@$products[$i+1]->alias.'.html')}}" style="background: url('<?=asset('upload/product/'.@$products[$i+1]->photo)?>') no-repeat center center /cover" class="zoom">
                            <img src="{{asset('upload/product/'.@$products[$i+1]->photo)}}" alt="" title="">
                            <div class="pj-text flex-center-center">
                                <div class="text-inn text-center">
                                    <h5><span>{{@$products[$i+1]->name}}</span></h5>
                                    <p>{{@$products[$i+1]->huongdan}}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6 col-image col-image-1">
                        <a href="{{url('du-an/'.@$products[$i+2]->alias.'.html')}}" style="background: url('<?=asset('upload/product/'.@$products[$i+2]->photo)?>') no-repeat center center /cover" class="zoom">
                            <img src="{{asset('upload/product/'.@$products[$i+2]->photo)}}" alt="" title="">
                            <div class="pj-text flex-center-center">
                                <div class="text-inn text-center">
                                    <h5><span>{{ @$products[$i+2]->name }}</span></h5>
                                    <p>{{@$products[$i+2]->huongdan}}</p>
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
        </div>
    </section>
</main>
@endsection
