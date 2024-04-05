<!-- womens accesssories -->

@extends('layouts.app')
@section('content')
<div class="container">
    <h1 class="text-center mt-5 mb-4" id='womenstitle' >Men's Accessories</h1>
    <div class="row d-flex justify-content-center">
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('mensties') }}">
                    <img class="card-img-top" src="{{ asset('images/mens/ties/mensties.jpg') }}" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Men's Ties</h5>
                    <p class="card-text">Explore our collection of men's ties.</p>
                    <a href="{{ route('mensties') }}" class="btn">View Ties</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('mensbelts') }}">
                    <img class="card-img-top" src="{{ asset('images/mens/belts/mensbelts.jpg') }}" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Men's Belts</h5>
                    <p class="card-text">Discover our range of men's belts.</p>
                    <a href="{{ route('mensbelts') }}" class="btn">View Belts</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
<style>
    .card-img-top {
        height: 500px;
        width: 300%;
        object-fit: cover;
    }
    .card {
        border: none !important;
    }
    .btn{
        background-color: #93a04a !important;
    }
</style>