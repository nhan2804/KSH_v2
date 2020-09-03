<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\CateNews;
use App\News;
use Illuminate\Support\Str;

class NewsController extends Controller
{
    public function index()
    {
    	$data = News::paginate(20);
    	$arr = [
    		'data'=>$data
    	];
    	return view('admin.news',$arr);
    }
    public function add()
    {
    	$data = CateNews::all();
    	$arr = [
    		'cate'=>$data
    	];
    	return view('admin.create_news',$arr);
    }
    public function insert(Request $req)
    {
    	$data = new News;
    $this->validate($req, [
        'img_upload' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
    ]);
    if ($req->hasFile('img_upload')) {
        $image = $req->file('img_upload');
        $name_img = rand(11111, 99999).time().'.'.$image->getClientOriginalExtension();
        $destinationPath = public_path('/images');
        $dir_img="/images/".$name_img;
        $image->move($destinationPath, $name_img);
        $data->title_news = $req->title_news;
        $data->content_news = $req->content_news;
        $data->cate_parent = $req->cate;
        $data->thumbnail_blog = $dir_img;
        $data->view_blog = 0;
        $data->slug = Str::slug($req->title_news, "-");
        $data->save();
        return back()->with('success','Đăng bài thành công');
    }
    }
    public function insert_cate(Request $req)
    {
    	$data = new CateNews;
    	$data->name_cate= $req->name_cate;
    	$data->parent_id=0;
    	$data->save();
    	return back();
    }
}
