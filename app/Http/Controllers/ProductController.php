<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ImageProduct;
use App\Product;
use App\CateProduct;
use App\News;
use DB;


class ProductController extends Controller
{
    public function index()
    {
    	$cate = CateProduct::all();
    	$products = DB::table('product')->join('imageproduct','product.id_pro','imageproduct.id_pro')->groupBy('product.id_pro')->get();
    	$news = News::take(10)->get();
    	$arr = [
    		'cate'=>$cate,
    		'products'=>$products,
    		'news'=>$news
    	];
    	return view('page.products',$arr);
    }

    public function product_details($slug)
    {
    	// $product = Product::find(1)->where('slug_pro','=',$slug)->first()->image();
		$pro = DB::table('product')->join('imageproduct','product.id_pro','imageproduct.id_pro')							->join('cate_product','product.cate_parent','cate_product.id_cate')							->where('slug_pro','=',$slug)
								->groupBy('product.id_pro')->first();
    	$img = ImageProduct::where('id_pro',$pro->id_pro)->get();
    	$ref_pro = Product::where('cate_parent',$pro->cate_parent)->where('id_pro','!=',$pro->id_pro)						 ->take(6)->get();
		$ref_pro = DB::table('product')->join('imageproduct','product.id_pro','imageproduct.id_pro')						->where('cate_parent',$pro->cate_parent)
								->where('product.id_pro','!=',$pro->id_pro)
								->groupBy('product.id_pro')->take(6)->get();
    	$arr = [
    		'pro'=>$pro,
    		'imgs'=>$img,
    		'ref_pro'=>$ref_pro
		];

        return view('page.product_details',$arr);
    }
    public function search(Request $req)
    {
    	$q=$req->get('query');
    	// $data = Product::where([ 
     //    ['name_pro', 'LIKE', '%' . $q . '%'],
    	// ])->get();
    	$data = DB::table('product')->join('imageproduct','product.id_pro','imageproduct.id_pro')->where('name_pro', 'LIKE', '%' . $q . '%')->groupBy('product.id_pro')->get();
    	$cate = CateProduct::all();
    	$news = News::take(10)->get();
    	$arr = [
    		'cate'=>$cate,
    		'data'=>$data,
    		'news'=>$news,
    		'query'=>$q
    	];
    	return view('page.product_search',$arr);
    }
}
