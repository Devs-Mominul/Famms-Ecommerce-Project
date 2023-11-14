@extends('layouts.main')
@push('page_css')
<style>
    tr th{
        font-size: 8px
    }

</style>

@endpush
@section('content')
<div class="overflow-auto bg-black col-lg-12">
    <div class="bg-black cards">
        <div class="card-header"><h5>Show Ordered Product</h5></div>
        <div class="card-body">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>Title</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Image</th>
                        <th>Payment Status</th>
                        <th>Delibery Status</th>
                        <th>Deliveried</th>
                        <th>Download</th>


                    </tr>
                </thead>
                <tbody>
                    @foreach ($orders as $order)
                    <tr>
                        <td>{{ $order->name }}</td>
                        <td>{{ $order->email }}</td>
                        <td>{{ $order->phone }}</td>
                        <td>{{ $order->address }}</td>
                        <td>{{ $order->product_title }}</td>
                        <td>{{ $order->quantity }}</td>
                        <td>{{ $order->price }}</td>
                        <td><img src="/product/{{ $order->image }}" alt=""></td>
                        <td>{{ $order->payment_status }}</td>
                        <td>{{ $order->delivery_status }}</td>
                        <td>
                          @if($order->delivery_status=='processing')
                          <a href="{{ route('delivered',$order->id) }}" class="btn btn-primary">Delivered</a>
                          @else
                          <p>processing</p>

                          @endif

                        </td>
                        <td>
                            <a href="{{ route('download',$order->id) }}" class="btn btn-secondary">download</a>
                        </td>

                    </tr>

                    @endforeach
                </tbody>

            </table>
        </div>

    </div>
</div>

@endsection
