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
Route::get('admin', function () {
    return view('admin.dashboard');
});


Route::prefix('news')->group(function () {
	Route::get('/{slug}','NewsController@view');
    Route::get('/','NewsController@index');
    
});

//Admin
Route::prefix('admin')->group(function () {
    Route::prefix('news')->group(function () {
	    Route::get('/','Admin\NewsController@index');
	    Route::get('/add','Admin\NewsController@add');
	    Route::post('/insert','Admin\NewsController@insert');
	    Route::post('/insert-cate','Admin\NewsController@insert_cate');
	});
});
