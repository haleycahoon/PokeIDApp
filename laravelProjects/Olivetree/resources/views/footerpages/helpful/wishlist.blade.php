@extends('layouts.app')

@section('content')
<div class="wishlist-container">
    <h1>My Wishlist</h1>
    <div class="wishlist-content">
        <p>
            Your wishlist is currently empty. Start adding items to your wishlist
            today!
        </p>
    </div>
</div>
</div>
@endsection

<style scoped>
    .wishlist-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px 20px;
    }

    h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    p {
        font-size: 16px;
        line-height: 1.6;
        margin-bottom: 15px;
    }
</style>