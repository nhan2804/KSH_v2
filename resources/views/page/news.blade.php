@extends('welcome')
@section('content')
<div class="main container">
	<div class="breadcrumb mt-1">
        <a href="index.html"><i class="fas fa-home"></i> Trang chủ </a> / <a href=""> Tin tức</a>
    </div>
    <div class="row">
    	@foreach($news as $k=>$v)
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
        </div>
        @endforeach
    </div>
</div>
@endsection