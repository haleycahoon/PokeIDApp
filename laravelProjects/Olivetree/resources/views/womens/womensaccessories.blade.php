<!-- womens accesssories -->

@extends('layouts.app')
@section('content')
<div class="container">
    <h1 class="text-center mt-5 mb-4" id='womenstitle' >Women's Accessories</h1>
    <div class="row d-flex align-items-stretch">
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('womensbags') }}">
                    <img class="card-img-top" src="{{ asset('images/womensbags.jpg') }}" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Women's Bags</h5>
                    <p class="card-text">Explore our collection of women's bags.</p>
                    <a href="{{ route('womensbags') }}" class="btn">View Bags</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('womensjewelry') }}">
                    <img class="card-img-top" src="{{ asset('images/womensjewelry.jpg') }}" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Women's Jewelry</h5>
                    <p class="card-text">Discover our range of women's jewelry.</p>
                    <a href="{{ route('womensjewelry') }}" class="btn">View Jewelry</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card h-100 mb-3">
                <a href="{{ route('womenshairaccessories') }}">
                    <img class="card-img-top" src="{{ asset('images/womenshairaccessories.jpg') }}"
                        alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Women's Hair Accessories</h5>
                    <p class="card-text">Discover our range of women's hair accessories.</p>
                    <a href="{{ route('womenshairaccessories') }}" class="btn">View Hair Accessories</a>
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