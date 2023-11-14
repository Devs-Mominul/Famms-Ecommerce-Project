<?php

namespace App\Http\Controllers;

use App\Models\Catagory;
use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use PDF;

class AdminController extends Controller
{
  public function catagory_view(Request $request){
    $catagory=Catagory::all();
    return view('catagory.catagory',[
        'user' => $request->user(),
        'catagory'=>$catagory,

    ]);

  }
  public function catagory_post(Request $request){
    Catagory::insert([
        'catagory_name'=>$request->catagory
    ]);

    return back()->with('success','Your Data submited');

  }
  public function delete_catagory($id){
    Catagory::find($id)->delete();

  }
  public function product_add(Request $request){
    $catagory=Catagory::all();
    return view('product.product',[
        'user' => $request->user(),
        'catagory'=>$catagory,
    ]);
  }
  public function Add_product(Request $request){
    $product=new Product();
    $product->title=$request->title;
    $product->description=$request->description;
    $product->quantity=$request->quantity;
    $product->price=$request->price;
    $product->catagory=$request->category;
    $product->discount_price=$request->discount;
    $image=$request->image;
    $imagename=time().'.'.$image->getClientOriginalExtension();
    $request->image->move('product',$imagename);
    $product->image=$imagename;
    $product->save();
    return redirect()->back();

  }
  public function Show_Product(Request $request){
    $products=Product::all();
    return view('product.show_product',[
        'user' => $request->user(),
        'products'=>$products
    ]);
  }
  public function Delete_Product($delete_id){
    Product::find($delete_id)->delete();

  }
  public function Product_Update($id){
    $catagory=Catagory::all();
    $product=Product::find($id);
    return view('product.product_update',[
        'catagory'=>$catagory,
        'products'=>$product,
    ]);
  }
  public function Update_Product_Confirm(Request $request,$id){
    $product= Product::find($id);
    $product->title=$request->title;
    $product->description=$request->description;
    $product->quantity=$request->quantity;
    $product->price=$request->price;
    $product->catagory=$request->category;
    $product->discount_price=$request->discount;
    $image=$request->image;
   if($image){
    $imagename=time().'.'.$image->getCligetClientOriginalExtension();
    $request->image->move('product',$imagename);
    $product->$imagename;
   }
    $product->save();
    return redirect()->back();

  }
  public function Download($id){
    $order=Order::find($id);

    $pdf=PDF::loadView('layouts.pdf',compact('order'));
    return $pdf->download('order_details.pdf');

  }
}
