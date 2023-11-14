@extends('layouts.main')
@push('page_css')
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">

@endpush
@section('content')
<div class="col-lg-8">
    <form action="{{ route('add.product') }}" method="post" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="title">Product Title</label>
            <input type="text" name="title" id="title" class="form-control" value="{{ $products->title }}">
        </div>
        <div class="mb-3">
            <label for="description">Product Description</label>
           <textarea type="text" name="description" id="summernote"  class="form-control" cols="30" rows="10" value='{{ $products->description }}' ></textarea>
        </div>
        <div class="mb-3">
            <label for="image">Product Image</label>
            <input type="file" name="image" id="image" class="form-control">
        </div>
        <div class="mb-3">
            <label for="category">Product Catagory</label>
            <select name="category" id="category" class="form-control">
              @foreach ($catagory as $cat )
              <option value="{{ $cat->catagory_name }}">{{ $cat->catagory_name }}</option>

              @endforeach
            </select>
        </div>
        <div class="mb-3">
            <label for="quantity">Product Quantity</label>
            <input type="number" name="quantity" id="quantity" class="form-control" value="{{ $products->quantity }}">
        </div>
        <div class="mb-3">
            <label for="title">Product Price</label>
            <input type="number" name="price" id="price" class="form-control" value="{{ $products->price }}">
        </div>
        <div class="mb-3">
            <label for="discount">Product Discount</label>
            <input type="text" name="discount" id="discount" class="form-control" value="{{ $products->discount_price }}">
        </div>

        <div class="mb-3">
            <label for="afterd">Product After Discount</label>
            <input type="text" name="after_discount" id="after_discount" class="form-control">
        </div>
        <div class="mb-3">
            <button type="submit" class="btn btn-success">Submit</button>
        </div>

    </form>
</div>
@endsection
@push('page_js')
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>

     $(document).ready(function() {
    $('#summernote').summernote();
  });
</script>


@endpush

