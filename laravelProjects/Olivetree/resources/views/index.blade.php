<!-- home/index -->
@extends('layouts.app')
@section('content')
<div class="container">
    <h1 class="text-center mt-5 mb-4">Home</h1>
    <div class="row justify-content-center">
        <div class="col-md-4 d-flex">
            <div class="card flex-fill">
                <a href="{{ route('men') }}">
                    <img class="card-img-top" src="images/mensclothing.jpg" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Men</h5>
                    <p class="card-text">Discover our collection for men.</p>
                    <a href="{{ route('men') }}" class="btn">View Men's Clothing</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex">
            <div class="card flex-fill">
            <a href="{{ route('women') }}">
                    <img class="card-img-top" src="images/womensclothing.jpg" alt="Card image cap">
                </a>                <div class="card-body">
                    <h5 class="card-title">Women</h5>
                    <p class="card-text">Discover our collection for women.</p>
                    <a href="{{ route('women') }}" class="btn">View Women's Clothing</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex">
            <div class="card flex-fill">
                <a href="{{ route('accessories') }}">
                    <img class="card-img-top" src="images/accessories.jpg" alt="Card image cap">
                </a>
            <div class="card-body">
                    <h5 class="card-title">Accessories</h5>
                    <p class="card-text">Explore our accessories collection.</p>
                    <a href="{{ route('accessories') }}" class="btn">View Accessories</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
<style>
    .card-img-top {
        height: 500px;
        width: 400%;
        object-fit: cover;
    }
    .card {
        border: none !important;
    }
    .btn{
        background-color: #93a04a !important;
    }
    
</style>