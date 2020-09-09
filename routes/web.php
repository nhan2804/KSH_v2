<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('page.home');
});
Route::get('/home', function () {
    return view('page.home');
});

Route::get('/contact', function () {
    return view('page.contact');
});
Auth::routes();


Route::get('/introduce', 'HomeController@introduce');
Route::get('/system-company', 'HomeController@system_company');

Route::prefix('news')->group(function () {
	Route::get('/{slug}','NewsController@view');
    Route::get('/','NewsController@index');
    
});
Route::prefix('product')->group(function () {
	Route::get('/search','ProductController@search');
	Route::get('/','ProductController@index');
    Route::get('/{slug}','ProductController@product_details');
    
});

//Admin

Route::get('/admin/login', 'Admin\ManageController@index');
Route::post('/admin/login-confirm', 'Admin\ManageController@login_confirm');
Route::get('/admin', 'Admin\ManageController@admin');
Route::middleware('auth')->group(function() {
	Route::prefix('admin')->group(function () {
		Route::get('/logout', 'Admin\ManageController@logout');
		Route::prefix('news')->group(function () {
			Route::get('/','Admin\NewsController@index');
			Route::get('/add','Admin\NewsController@add');
			Route::post('/insert','Admin\NewsController@insert');
			Route::post('/insert-cate','Admin\NewsController@insert_cate');
		});
		Route::resource('product', 'Admin\ProductController');
		Route::post('product/uploadImg', 'Admin\ProductController@postImages'); 
		Route::post('product/insert-cate', 'Admin\ProductController@insert_cate'); 
	});
});
