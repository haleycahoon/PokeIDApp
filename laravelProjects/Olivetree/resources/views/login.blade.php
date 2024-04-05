@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h1 class="text-center mt-3 mb-0">Login</h1>
                    </div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('login') }}">
                            @csrf
                            <div class="form-group">
                                <label for="email" class="form-label">Email Address</label>
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div><br>

                            <div class="form-group">
                                <label for="password" class="form-label">Password</label>
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div><br>
                            
                            <div class="form-group mb-0">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <p class="text-center mb-0">New User? <a href="{{ route('register') }}" class="text-decoration-none">Register here</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

<style>
    .btn-primary {
        background-color: #93a04a;
        border-color: #93a04a;
    }

    .btn-primary:hover {
        background-color: #7d8542;
        border-color: #7d8542;
    }

    .form-label {
        font-weight: bold;
    }

    .card-header h1 {
        font-size: 24px;
        color: #333;
        text-align: center;
        margin-top: 10px;
        margin-bottom: 20px;
    }

    .card-footer p {
        font-size: 14px;
    }
</style>
