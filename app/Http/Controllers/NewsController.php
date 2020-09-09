<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use App\CateNews;
class NewsController extends Controller
{
    public function index()
    {
    	$data = News::all();
    	return view('page.news')->with('news',$data);
    }
    public function view($slug)
    {
    	$data = News::where('slug',$slug)->first();
        $ref_news = News::where('cate_parent',$data->cate_parent)->where('id_news','!=',$data->id_news)->take(6)->get();
    	return view('page.view_news')->with('data',$data)->with('ref_news',$ref_news);

    }
}
