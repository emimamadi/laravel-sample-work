<?php

use Illuminate\Support\Facades\Route;
use App\Models\User;
use App\Models\Multipic;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ChangePass;

use Illuminate\Support\Facades\DB;

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

    $brands=DB::table('brands')->get();
 
    // $abouts=DB::table('home_abouts')->first();

    $abouts=DB::table('home_abouts')->latest('id')->first();

    $images=Multipic::all();

    return view('home', compact('brands','abouts','images'));
});

// category controoler

Route::get('/category/all',[CategoryController::class,'AllCat'])->name('all.category');





Route::post('/category/add',[CategoryController::class,'AddCat'])->name('store.category');


Route::get('/category/edit/{id}',[CategoryController::class,'Edit']);

Route::post('/category/update/{id}',[CategoryController::class,'Update']);

Route::get('/softdelete/category/{id}',[CategoryController::class,'SoftDelete']);

Route::get('/category/restore/{id}',[CategoryController::class,'Restore']);

Route::get('/pdelete/category/{id}',[CategoryController::class,'Pdelete']);



//For Brand Route
Route::get('/brand/all',[BrandController::class,'AllBrand'])->name('all.brand');


Route::post('/brand/add',[BrandController::class,'StoreBrand'])->name('store.brand');

Route::get('/brand/edit/{id}',[BrandController::class,'Edit']);

Route::post('/brand/update/{id}',[BrandController::class,'Update']);

Route::get('/brand/delete/{id}',[BrandController::class,'Delete']);


/// Multi image 

Route::get('/multi/image',[BrandController::class,'Multipic'])->name('multi.image');

Route::post('/multi/add',[BrandController::class,'StoreImg'])->name('store.image');

///admin all route

Route::get('/home/slider',[HomeController::class,'HomeSlider'])->name('home.slider');

Route::get('/add/slider',[HomeController::class,'AddSlider'])->name('add.slider');


Route::post('/store/slider',[HomeController::class,'StoreSlider'])->name('store.slider');

Route::get('/slider/edit/{id}',[HomeController::class,'EditSlider']);

Route::post('/slider/update/{id}',[HomeController::class,'UpdateSlider']);

Route::get('/slider/delete/{id}',[HomeController::class,'DeleteSlider']);




///home about route

Route::get('/home/about',[AboutController::class,'HomeAbout'])->name('home.about');

Route::get('/add/about',[AboutController::class,'AddAbout'])->name('add.about');

Route::post('/store/about',[AboutController::class,'StoreAbout'])->name('store.about');

Route::get('/about/edit/{id}',[AboutController::class,'EditAbout']);

Route::post('/update/homeabout/{id}',[AboutController::class,'UpdateAbout']);

Route::get('/about/delete/{id}',[AboutController::class,'DeleteAbout']);


//Portfolio page route

Route::get('/portfolio',[AboutController::class,'Portfolio'])->name('portfolio');


//admin contact page route

Route::get('/admin/contact',[ContactController::class,'AdminContact'])->name('admin.contact');

Route::get('/admin/add/contact',[ContactController::class,'AdminAddContact'])->name('add.contact');

Route::post('/admin/store/contact',[ContactController::class,'AdminStoreContact'])->name('store.contact');

Route::get('/admin/message',[ContactController::class,'AdminMessage'])->name('admin.message');

Route::get('/contact/edit/{id}',[ContactController::class,'EditContact']);

Route::post('/contact/update/{id}',[ContactController::class,'UpdateContact']);

Route::get('/contact/delete/{id}',[ContactController::class,'DeleteContact']);

Route::get('/message/delete/{id}',[ContactController::class,'DeleteMessage']);


//Home contact page route

Route::get('/contact',[ContactController::class,'Contact'])->name('contact');

Route::post('/contact/form',[ContactController::class,'ContactForm'])->name('contact.form');



/// php info
Route::get('/phpinfo', function() {  return phpinfo();});


Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
   
    // $users= User::all();
    return view('admin.index');
})->name('dashboard');

Route::get('/user/logout',[BrandController::class,'Logout'])->name('user.logout');



//Change Password and user profile

Route::get('/user/password',[ChangePass::class,'CPassword'])->name('change.password');

Route::post('/password/update',[ChangePass::class,'UpdatePassword'])->name('password.update');


///User profile

Route::get('/user/profile',[ChangePass::class,'PUpdate'])->name('profile.update');

Route::post('/user/profile/update',[ChangePass::class,'UpdateProfile'])->name('update.user.profile');