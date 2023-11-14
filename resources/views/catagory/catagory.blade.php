@extends('layouts.main')
@section('content')
<div class="col-lg-12">
    <div class="card">
        <div class="card-header"><h1>Catagory</h1></div>
        <div class="card-body">
            @if(session('success'))
            <div class="alert alert-info ">
                {{ session('success') }}
            </div>

            @endif
            <form action="{{ route('catagory.post') }}" method="post">
                @csrf
                <div class="mb-3">
                    <label for="name">Catagory</label>
                    <input type="text" name="catagory" class="form-control">
                </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>

</div>

<div class="mt-5 col-lg-12">
    <div class="card">
        <div class="card-header">Table Data View</div>
        <div class="card-body">
            <table class="table table-bordered">
                <tr>
                    <th>Catagory</th>
                    <th>Action</th>
                </tr>
                @foreach ($catagory as $cat )
                <tr>
                    <td>{{ $cat->catagory_name }}</td>
                    <td><a href="{{ route('delete_catagory',$cat->id) }}" class="btn btn-danger">Delete</a></td>
                </tr>

                @endforeach

            </table>
        </div>
    </div>
</div>
@endsection

