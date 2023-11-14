@extends('layouts.main')
@section('content')
<div class="col-lg-12">
    <div class="card">
        <div class="card-header">Product List</div>
        <div class="card-body">
            <table class="table table-bordered">
                <thead>
                    <th>Sl</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Discount</th>
                    <th>Action</th>
                </thead>
                <tbody>
                 @foreach ($products as $product)
                 <tr>
                    <td>{{ $product->id }}</td>
                    <td>{{ $product->title }}</td>
                    <td>{{ $product->description }}</td>
                    <td><img src="/product/{{ $product->image }}" alt="imag"></td>
                    <td>{{ $product->quantity }}</td>
                    <td>{{ $product->catagory }}</td>
                    <td>{{ $product->price }}</td>
                    <td>{{ $product->discount_price }}</td>
                    <td><a href="{{ route('delete.product',$product->id) }}" class="btn btn-danger" onclick="return confirm('are you want to delete this')">Delete</a>
                    <a href="{{ route('update.product',$product->id) }}" class="btn btn-success">Edit</a></td>
                  </tr>

                 @endforeach
                </tbody>

            </table>
        </div>
    </div>
</div>
@endsection
