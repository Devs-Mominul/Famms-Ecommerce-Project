@extends('layouts.main')
@push('page_css')
@include('profile.partials.filepond-css')

@endpush
@section('content')

<div class="card-body">
    <h4 class="card-title">Profile Updated</h4>
    <div class="bg-primary mt-5 mb-5 text-center">
        @if(session('success'))
        {{ session('success') }}
        @endif

    </div>

    <form class="forms-sample" action="{{ route('profile.update') }}" method="POST">
        @csrf
        @method('patch')

      <div class="form-group">
        <label for="exampleInputName1">Name</label>
        <input type="text" class="form-control" id="exampleInputName1" placeholder="Name" name="name">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail3">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email" name="email">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword4">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password" name="password">
      </div>
      {{--  <div class="form-group">

        <input type="file" name="img" class="file-upload-default">

      </div>  --}}

      <div class="form-group">
        <label>File upload</label>
        <input type="file" name="image" id="image">


      </div>



      <button type="submit" class="btn btn-primary mr-2">Submit</button>
      <button class="btn btn-dark">Cancel</button>
    </form>
  </div>

@endsection
@push('page_js')
@include('profile.partials.filepond-js')

@endpush
