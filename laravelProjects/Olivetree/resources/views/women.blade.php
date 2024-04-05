<!-- womens -->

@extends('layouts.app')
@section('content')
<div class="container">
    <h1 class="text-center mt-5 mb-4" id='womenstitle' >Women's Selection</h1>
    <div class="row d-flex align-items-stretch">
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('womensshirts') }}">
                    <img class="card-img-top" src="images/womens/shirts/1.jpg" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Women's Shirts</h5>
                    <p class="card-text">Explore our collection of women's shirts.</p>
                    <a href="{{ route('womensshirts') }}" class="btn">View Shirts</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('womenspants') }}">
                    <img class="card-img-top" src="images/womens/pants/one.jpg" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Women's Pants</h5>
                    <p class="card-text">Explore our collection of women's pants</p>
                    <a href="{{ route('womenspants') }}" class="btn">View Pants</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('womensaccessories') }}">
                    <img class="card-img-top" src="images/womensaccessories.jpg" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Women's Accessories</h5>
                    <p class="card-text">Discover our range of women's accessories.</p>
                    <a href="{{ route('womensaccessories') }}" class="btn">View Accessories</a>
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