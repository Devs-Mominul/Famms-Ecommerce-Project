<?php

namespace App\Http\Controllers;

use App\Models\Card;
use App\Models\NewsLetter;
use App\Models\Order;
use App\Models\Product;
use App\Models\Subcribe;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

use Stripe;

class HomeController extends Controller
{
    public function index(){
        $product=Product::all();
        return view('frontend.index',[
            'products'=>$product
        ]);
    }
    public function Subscribe(Request $request){
        Subcribe::create([
            'subscribe'=>$request->email,

        ]);
        return redirect()->back()->with('success','Thanks For Subscribe ');


    }
    public function NewsLetter(Request $request){
        NewsLetter::create([
            'newsletter'=>$request->email,

        ]);
        return redirect()->back()->with('succes','Thanks For Subscribe ');


    }
    public function Product_Details($id){
        $product=Product::find($id);
        return view('product.product_details',compact('product'));
    }
    public function Add_To_Card(Request $request,$id){
        if(Auth::id()){
           $user=Auth::user();
           $product=Product::find($id);
           $card=new Card();
           $card->name=$user->name;
           $card->email=$user->email;
           $card->phone=$user->phone;
           $card->address=$user->address;
           $card->user_id=$user->id;
           $card->product_title=$product->title;
           $card->price=$product->price;
           $card->image=$product->image;
           $card->product_id=$product->id;
           $card->quantity=$request->quantity;
           $card->save();
           return redirect()->back();
        }
        else{
            return redirect('register');
        }
    }
    public function Show_Card(){

            $id=Auth::user()->id;

            $card=Card::where('user_id','=',$id)->get();


        return view('product.show_card',[
            'cards'=>$card,

        ]);


    }

    public function Order_Show(){
        $user=Auth::user();
        $user_id=$user->id;
        $order_data=Card::where('user_id','=',$user_id)->get();
        foreach($order_data as $data){
            $order=new Order();
            $order->name=$data->name;
            $order->email=$data->email;
            $order->phone=$data->phone;
            $order->address=$data->address;
            $order->user_id=$data->user_id;
            $order->product_title=$data->product_title;
            $order->price=$data->price;
            $order->image=$data->image;
            $order->quantity=$data->quantity;
            $order->product_id=$data->product_id;
            $order->payment_status='cash on delivery';
            $order->delivery_status='processing';
            $order->save();
            $card_id=$data->id;
            $card=Card::find($card_id);
            $card->delete();

        }
        return redirect()->back();



    }
    public function stripe($totalprice){
        return view('product.striple',compact('totalprice'));

    }
    public function Stripe_Post(Request $request,$totalprice){
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

        Stripe\Charge::create ([
                "amount" => $totalprice * 100,
                "currency" => "usd",
                "source" => $request->stripeToken,
                "description" => "Thanks for Payment"
        ]);



        $user=Auth::user();
        $user_id=$user->id;
        $order_data=Card::where('user_id','=',$user_id)->get();
        foreach($order_data as $data){
            $order=new Order();
            $order->name=$data->name;
            $order->email=$data->email;
            $order->phone=$data->phone;
            $order->address=$data->address;
            $order->user_id=$data->user_id;
            $order->product_title=$data->product_title;
            $order->price=$data->price;
            $order->image=$data->image;
            $order->quantity=$data->quantity;
            $order->product_id=$data->product_id;
            $order->payment_status='Paid';
            $order->delivery_status='processing';
            $order->save();
            $card_id=$data->id;
            $card=Card::find($card_id);
            $card->delete();

        }

        Session::flash('success', 'Payment successful!');

        return back();

    }
    public function Order_Data(){
        $orders=Order::all();
        return view('product.order',[
            'orders'=>$orders
        ]);
    }
    public function delivered($id){
        $order=Order::find($id);
        $order->delivery_status='delivered';
        $order->save();
        return redirect()->back();
    }
}
