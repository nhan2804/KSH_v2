<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
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
    	return view('page.view_news')->with('data',$data);

    }
}
