<!-- womens pants -->

<?php
    use App\Models\Cloth;
    use Illuminate\Support\Facades\Auth;
?>
@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="text-center mt-5 mb-4">Women's Pants</h1>
    <div class="row">
        @foreach($clothes as $cloth)
        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
            <div class="card h-100">
                <img src="{{ asset('images/womens/pants/' . $cloth->image) }}" class="card-img-top"
                    alt="{{ $cloth->name }}">
                <div class="card-body">
                    <h5 class="card-title">{{ $cloth->name }}</h5>
                    <p class="card-text">{{ $cloth->description }}</p>
                    <p class="card-text price">${{ $cloth->price }}</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn">Add to Cart</a>
                    <a href="#" class="btn">Favorite</a>

                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
{{ $clothes->links('pagination::bootstrap-4')}} 
@endsection

<style>
    .price {
        color: red;
    }
    .card {
        border: none !important;
    }
    .btn{
        background-color: #93a04a !important;
    }
    .card-footer {
        display: flex;
        justify-content: space-between;
    }
</style>