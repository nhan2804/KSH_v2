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
    	$product_first = DB::table('product')->join('imageproduct','product.id_pro','imageproduct.id_pro')->where('slug_pro','=',$slug)->groupBy('product.id_pro')->first();
    	$product = DB::table('product')->join('imageproduct','product.id_pro','imageproduct.id_pro')->where('slug_pro','=',$slug)->get();
    	// print_r($product);
        return view('page.product_details')->with('pro',$product)->with('product_first',$product_first);
    }
}
