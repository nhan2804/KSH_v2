@extends('welcome')
@section('content')
<div class="main container">
	<div class="row mt-4 mb-2">
                <div class="col-lg-9">
                    <div class="main-post-title">
                      {{$data->title_news}}
                    </div>
                    <div class="main-post-time">
                      <i class="far fa-clock"> 28/04/2001</i>
                    </div>
                    <div class="main-post-content">
                        {!! html_entity_decode($data->content_news) !!}
                    </div>
                </div>
                <div class="col-lg-3">
                  Quảng cáo ở đây
                </div>
            </div>
            <h4 class="mt-4" style="color: var(--primary); font-weight: bold;">XEM THÊM</h4>
            <div class="row">
                @foreach($ref_news as $k=>$v)
                <div class="col-lg-12 mb-2">
                    <div class="row">
                        <div class="col-lg-3">
                            <img class="img-fluid" src="{{asset($v->thumbnail_blog)}}" alt="">
                        </div>
                        <div class="col-lg-9">
                            <div>
                                <a href="{{URL::to('news/'.$v->slug)}}" class="sub-post-title">{{$v->title_news}}</a>
                                <div class="time__post">
                                    <i class="far fa-clock"> 28/04/2001</i>
                                    <i class="far fa-eye"></i> 2009 Lượt xem
                                </div>
                                <div class="sub-post-desc">
                                    {!!$v->content_news!!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
</div>
@endsection