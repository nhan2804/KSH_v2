<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\ImageProduct;
use App\Product;
use App\CateProduct;
use Illuminate\Support\Str;
class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.product');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = CateProduct::all();
        return view('admin.new_product')->with('data',$data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $req)
    {
       $validatedData = $req->validate([
        'name_pro' => 'required',
        'detail_pro' => 'required',
        'desc_pro' => 'required',
        'cate_id' => 'required',
        'seo_title' => 'required',
        'seo_desc' => 'required',
        'seo_key' => 'required',
        'cate_id' => 'required'
    ]);
       $data = new Product;
       $data->name_pro= $req->name_pro;
       $data->detail_pro= $req->detail_pro;
       $data->desc_pro= $req->desc_pro;
       $data->cate_parent= $req->cate_id;
       $data->seo_desc= $req->seo_desc;
       $data->seo_title= $req->seo_title;
       $data->seo_keyword= $req->seo_key;
       $data->img_product= "ok";
       $data->slug_pro = Str::slug($req->name_pro, "-");
       $data->save();
       session(['id_pro' =>$data->id_pro]);

        return redirect()->back()->with('success', 'Tạo thành công, vui lòng chọn các ảnh cho sản phẩm');   
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function insert_cate(Request $request)
    {
        $data = new CateProduct;
        $data->name_cate= $request->name_cate;
        $data->parent_id= 0;
        $data->save();
        return redirect()->back()->with('success', 'Tạo danh mục thành công,');   

    }
    function postImages(Request $request)
    {
        if ($request->ajax()) {
            if ($request->hasFile('file')) {
                $imageFiles = $request->file('file');
                // set destination path
                $folderDir = 'uploads/products/';
                $destinationPath = public_path('uploads/products/');
                // this form uploads multiple files
                foreach ($request->file('file') as $fileKey => $fileObject ) {
                    if ($fileObject->isValid()) {
                        $destinationFileName = time() . $fileObject->getClientOriginalName();
                        $fileObject->move($destinationPath, $destinationFileName);
                        $data = new ImageProduct;
                        $data->url_img = $folderDir . $destinationFileName;
                        $data->id_pro =  $request->session()->get('id_pro');;
                        $data->name_img = $destinationFileName;
                        $data->save();
                    }
                }
            }
        }
    }
}
