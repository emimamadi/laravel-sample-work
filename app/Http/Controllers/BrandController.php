<?php

namespace App\Http\Controllers;



use Illuminate\Http\Request;

use Illuminate\Support\Carbon;

use App\Models\Brand;

use App\Models\Multipic;

use Image;

use Auth;

// use Intervention\Image\ImageManagerStatic as Image;

// use ImageManager;

// use Intervention\Image\ImageManager;
// use Intervention\Image\ImageManagerStatic as Image;



class BrandController extends Controller
{

    public function __construct()
    {
        $this-> middleware('auth');
    }

    public function AllBrand(){

        $brands=Brand::latest()->paginate(5);
        return view ('admin.brand.index',compact('brands'));
    }

    public function StoreBrand(Request $request){
        $validatedData = $request->validate(
            [
                'brand_name' => 'required|unique:brands|min:4',
                'brand_image' => 'required|mimes:jpg,jpeg,png',

            ],
            [
                'brand_name.required' => 'Please Input Brand Name',

                'brand_image.min' => 'Category Longer than 4 chars',


            ]
        );

        $brand_image=$request->file('brand_image');






        // $img_ext=strtolower($brand_image->getClientOriginalExtension());
        // $img_name=$name_gen.".".$img_ext;
        // $up_location='image/brand/';
        // $last_img=$up_location.$img_name;
        // $brand_image->move($up_location,$img_name);





        // Image::configure(array('driver' => 'imagick'));


// include composer autoload
// require 'vendor/autoload.php';

// import the Intervention Image Manager Class
// use Intervention\Image\ImageManagerStatic as Image;

// configure with favored image driver (gd by default)
// Image::configure(array('driver' => 'imagick'));


// $manager = new ImageManager(array('driver' => 'imagick'));

// to finally create image instances
// $image = $manager->make('public/foo.jpg')->resize(300, 200)->save('image/brand/'.$name_gen);


        $name_gen=hexdec(uniqid()).'.'.$brand_image->getClientOriginalExtension();

        Image::make($brand_image)->resize(300,200)->save('image/brand/'.$name_gen);

        $last_img='image/brand/'.$name_gen;

//************************************************************************************ */

        Brand::insert([
            'brand_name'=>$request->brand_name,
            'brand_image'=>$last_img,
            'created_at'=>Carbon::now()
        ]);

        $notification=array(
                'message'=>'Brand Inserted Successfully',
                'alert-type'=>'success'
        );

        return Redirect()->back()->with($notification);
    }

    public function Edit($id){
        $brands=Brand::find($id);
        return view('admin.brand.edit',compact('brands'));
    }

    public function Update(Request $request ,$id){

        $validatedData = $request->validate(
            [
                'brand_name' => 'required|min:4',


            ],
            [
                'brand_name.required' => 'Please Input Brand Name',

                'brand_image.min' => 'Brand Longer than 4 chars',


            ]
        );

        $old_image=$request->old_image;

        $brand_image=$request->file('brand_image');


        if($brand_image){

            $name_gen=hexdec(uniqid());
        $img_ext=strtolower($brand_image->getClientOriginalExtension());
        $img_name=$name_gen.".".$img_ext;
        $up_location='image/brand/';
        $last_img=$up_location.$img_name;
        $brand_image->move($up_location,$img_name);

        unlink($old_image);

        Brand::find($id)->update([
            'brand_name'=>$request->brand_name,
            'brand_image'=>$last_img,
            'created_at'=>Carbon::now()
        ]);


        $notification=array(
            'message'=>'Brand Inserted Successfully',
            'alert-type'=>'info'
    );

        return Redirect()->back()->with($notification);

        }else {
            Brand::find($id)->update([
                'brand_name'=>$request->brand_name,
                'created_at'=>Carbon::now()
            ]);

            $notification=array(
                'message'=>'Brand Updated Successfully',
                'alert-type'=>'warning'
        );
            return Redirect()->back()->with($notification);
        }



    }

    public function Delete($id){
        $image=Brand::find($id);
        $old_image=$image->brand_image;
        unlink($old_image);

        Brand::find($id)->delete();

        $notification=array(
            'message'=>'Brand Deleted Successfully',
            'alert-type'=>'error'
    );

        return Redirect()->back()->with($notification);

    }




    public function Multipic(){

        $images=Multipic::all();

        return view('admin.multipic.index',compact('images'));
    }

    public function StoreImg(Request $request){

        $image=$request->file('image');

        foreach($image as $multi_img){


        $name_gen=hexdec(uniqid()).'.'.$multi_img->getClientOriginalExtension();

        Image::make($multi_img)->resize(300,300)->save('image/multi/'.$name_gen);

        $last_img='image/multi/'.$name_gen;



        Multipic::insert([

            'image'=>$last_img,
            'created_at'=>Carbon::now()
        ]);

        }

        return Redirect()->back()->with('success','Brand Inserted Successfully');




    }

    public function Logout(){
        Auth::logout();
        return Redirect()->route('login')->with('success','User Logout');
    }
}
