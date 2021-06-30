<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Slider;

use Image;

use Auth;

use Illuminate\Support\Carbon;

class HomeController extends Controller
{
    public function HomeSlider(){
        $sliders=Slider::latest()->get();
        return view('admin.slider.index',compact('sliders'));
    }

    public function AddSlider(){
        return view('admin.slider.create');
    }

    public function StoreSlider(Request $request){
        $slider_image=$request->file('image');


        $name_gen=hexdec(uniqid()).'.'.$slider_image->getClientOriginalExtension();

        Image::make($slider_image)->resize(1900,800)->save('image/slider/'.$name_gen);

        $last_img='image/slider/'.$name_gen;



        Slider::insert([
            'title'=>$request->title,
            'description'=>$request->description,
            'image'=>$last_img,
            'created_at'=>Carbon::now()
        ]);

        return Redirect()->route('home.slider')->with('success',' Slider Successfully');

    }


    public function EditSlider($id){
        $sliders=Slider::find($id);
        return view('admin.slider.edit',compact('sliders'));
    }




    public function UpdateSlider(Request $request ,$id){

        $validatedData = $request->validate(
            [
                'title' => 'required|min:4',


            ],
            [
                'title.required' => 'Please Input Brand Name',

                'title.min' => 'Slider Longer than 4 chars',


            ]
        );

        $old_image=$request->old_image;

        $image=$request->file('image');


        if($image){

        $name_gen=hexdec(uniqid());
        $img_ext=strtolower($image->getClientOriginalExtension());
        $img_name=$name_gen.".".$img_ext;
        $up_location='image/slider/';
        $last_img=$up_location.$img_name;
        $image->move($up_location,$img_name);

        unlink($old_image);

        Slider::find($id)->update([
            'title'=>$request->title,
            'description'=>$request->description,
            'image'=>$last_img,
            'created_at'=>Carbon::now()
        ]);


        $notification=array(
            'message'=>'Slider Inserted Successfully',
            'alert-type'=>'info'
    );

    return Redirect()->route('home.slider')->with('success',' Slider Successfully');

        }
        else {
            Slider::find($id)->update([
                'title'=>$request->title,
                'description'=>$request->description,
                'created_at'=>Carbon::now()
            ]);

            $notification=array(
                'message'=>'Slider Updated Successfully',
                'alert-type'=>'warning'
        );
        return Redirect()->route('home.slider')->with('success',' Slider Successfully');
        }



    }

    public function DeleteSlider($id){
        $image=Slider::find($id);
        $old_image=$image->image;
        unlink($old_image);

        Slider::find($id)->delete();

        $notification=array(
            'message'=>'Slider Deleted Successfully',
            'alert-type'=>'error'
    );

        return Redirect()->back()->with($notification);

    }





}
