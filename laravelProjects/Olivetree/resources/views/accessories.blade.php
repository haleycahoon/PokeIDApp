<!-- accessories -->

@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="text-center mt-5 mb-4" id='womenstitle' >Accessories</h1>
    <div class="row d-flex align-items-stretch justify-content-center">
        <div class="col-md-4"> 
            <div class="card h-100 mb-3"> 
                <a href="{{ route('womensaccessories') }}">
                    <img class="card-img-top" src="images/womensaccessories.jpg" alt="Card image cap">
                </a>
                <div class="card-body">
                    <h5 class="card-title">Women's Accessories</h5>
                    <p class="card-text">Explore our collection of women's accessories.</p>
                    <a href="{{ route('womensaccessories') }}" class="btn">View Women's Accessories</a>
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
                    <a href="{{ route('mensaccessories') }}" class="btn">View Men's Accessories</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
<style>
    .card {
        border: none !important;
    }
    .btn{
        background-color: #93a04a !important;
    }
</style>