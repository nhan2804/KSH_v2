@extends('welcome')
@section('content')
<div class="main container">
	<div class="breadcrumb mt-1">
        <a href="index.html"><i class="fas fa-home"></i> Trang chủ </a> / <a href=""> Tin tức</a>
    </div>
    <div class="row">
    	{{-- @foreach($news as $k=>$v)
    	<div class="col-lg-4 mb-3">
            <div class="post">
                <div class="img__post">
                    <img class="img-fluid" src="{{asset($v->thumbnail_blog)}}" alt="">
                </div>
                <div class="info__post">
                    <div class="time__post">
                        <i class="far fa-clock"> 28/04/2001</i>
                        <i class="far fa-eye"></i>
                        2009 Lượt xem
                    </div>
                    <a href="news/{{$v->slug}}" class="news-title">
                      {{ $v->title_news }}
                    </a>
                    <div class="desc__post">
                        {!! $v->content_news !!}
                    </div>
                </div>
            </div>
        </div> --}}
        <div class="col-lg-4">
            @foreach($news as $k=>$v)
            <a href="{{URL::to('news/'.$v->slug)}}" class="row mb-2">
                <h6>{{$v->title_news}}</h6>
                <div class="col-lg-4 gutter-6">
                    <img style="width: 100%;height: 70px" src="{{asset($v->thumbnail_blog)}}" alt="">
                </div>
                <div class="col-lg-8 gutter-6">
                    <div class="news__curr--info">
                        <p>{{$v->desc_news}}</p>
                    </div>
                </div>
            </a>
            @endforeach
        </div>
        <div class="col-lg-8">
            <div class="row">
            @foreach($pros as $k=>$v)
            <h3 class="col-12 col-lg-12">{{$v['name_cate']}}</h3>
            @foreach($v['products'] as $k1=>$v1)
            <a href="{{URL::to('news/'.$v1->slug)}}" class="col-6 col-lg-6">
                <div class="row">
                    <div class="col-lg-7 gutter-6">
                        <img style="width: 100%;height: 130px" src="{{asset($v1->thumbnail_blog)}}" alt="">
                    </div>
                    <div class="col-lg-5 gutter-6">
                        <div class="news__curr--info">
                            <h3>{{$v1->title_news}}</h3>
                        </div>
                    </div>
                </div>
            </a>
            @endforeach
            @endforeach
            </div>
        </div>
        {{-- @endforeach --}}
    </div>
</div>
@endsection