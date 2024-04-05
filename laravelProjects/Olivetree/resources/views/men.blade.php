<!-- mens -->

@extends('layouts.app')
@section('content')
<div class="container">
    <h1 class="text-center mt-5 mb-4" id='womenstitle' >Men's Selections</h1>
    <div class="row d-flex align-items-stretch">
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('mensshirts') }}">
                    <img class="card-img-top" src="images/mens/shirts/one.jpg" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Men's Shirts</h5>
                    <p class="card-text">Explore our collection of men's shirts.</p>
                    <a href="{{ route('mensshirts') }}" class="btn">View Shirts</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('menspants') }}">
                    <img class="card-img-top" src="images/mens/pants/one.jpg" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Men's Pants</h5>
                    <p class="card-text">Discover our range of men's pants.</p>
                    <a href="{{ route('menspants') }}" class="btn">View Pants</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('mensaccessories') }}">
                    <img class="card-img-top" src="images/mensaccessories.jpg" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Men's Accessories</h5>
                    <p class="card-text">Discover our range of men's accessories.</p>
                    <a href="{{ route('mensaccessories') }}" class="btn">View Accessories</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('content')
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