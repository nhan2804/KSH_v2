<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
    	return view('page.products');
    }

    public function product_details($slug)
    {
        return view('page.product_details');
    }
}
