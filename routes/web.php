<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UploadsController;
use App\Models\Upload;
use App\Models\User;
use Illuminate\Routing\Route as RoutingRoute;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/fff', function () {
    return view('welcome');
});
Route::get('/redirect',[HomeController::class,'redirect'])->name('auth','verified');
Route::get('/dashboard',[DashboardController::class,'Dashboard']

)->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    // Filepond
    Route::post('/filepond/upload', [UploadsController::class, 'filepondUpload'])
        ->name('filepond.upload');
    Route::delete('/filepond/delete', [UploadsController::class, 'filepondDelete'])
        ->name('filepond.delete');
});
Route::get('/catagory_view',[AdminController::class,'catagory_view'])->name('catagory.view');
Route::post('/catagory_view',[AdminController::class,'catagory_post'])->name('catagory.post');
Route::get('/delete_catagory/{data_id}',[AdminController::class,'delete_catagory'])->name('delete_catagory');
Route::get('/product_view',[AdminController::class,'product_add'])->name('product.add');
Route::post('add/product',[AdminController::class,'Add_product'])->name('add.product');
Route::get('/show_product',[AdminController::class,'Show_Product'])->name('show.product');
Route::get('/delete/product/{delete_id}',[AdminController::class,'Delete_Product'])->name('delete.product');
Route::get('/product/update/{id}',[AdminController::class,'Product_Update'])->name('update.product');
Route::post('/update/product/confirm/{id}',[AdminController::class,'Update_Product_Confirm'])->name('update.product.confirm');
Route::get('/',[HomeController::class,'index'])->name('frontend.index');
Route::post('/subscribe/post',[HomeController::class,'Subscribe'])->name('subscribe.post');
Route::post('/newsletter/post',[HomeController::class,'NewsLetter'])->name('news.post');
Route::get('/product/details/{id}',[HomeController::class,'Product_Details'])->name('product.details');
Route::post('/product/addtocard/{id}',[HomeController::class,'Add_To_Card'])->name('add.card');
Route::get('/card/show',[HomeController::class,'Show_Card'])->name('show.card');
Route::get('/order',[HomeController::class,'Order_Show'])->name('order.show');
Route::get('/stripe/{stripe}',[HomeController::class,'stripe'])->name('striple');
Route::post('/stripe/post/{stripe}', [HomeController::class,'Stripe_Post'])->name('stripe.post');
Route::get('/order/get',[HomeController::class,'Order_Data'])->name('order.get');
Route::get('/delivered/{id}',[HomeController::class,'delivered'])->name('delivered');
Route::get('/download/{id}',[AdminController::class,'Download'])->name('download');
require __DIR__.'/auth.php';
