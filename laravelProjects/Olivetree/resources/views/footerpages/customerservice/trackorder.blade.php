@extends('layouts.app')

@section('content')
<div class="track-order-container">
    <h1>Track Your Order</h1>
    <div class="track-order-content">
        <p>
            To track your order, please enter your order number and email address
            below.
        </p>
        <div class="track-order-form">
            <label for="orderNumber">Order Number:</label>
            <input type="text" id="orderNumber" name="orderNumber" placeholder="Enter your order number" />

            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email address" />
            <button @click="trackOrder">Track Order</button>
        </div>
    </div>
</div>
@endsection

<style scoped>
    .track-order-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px 20px;
    }

    h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .track-order-content {
        max-width: 600px;
    }

    p {
        font-size: 16px;
        line-height: 1.6;
        margin-bottom: 15px;
    }

    .track-order-form {
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-size: 14px;
        color: #555;
    }

    input {
        width: 100%;
        padding: 12px;
        margin-bottom: 20px;
        color: #333;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    button {
        background-color: #93a04a;
        color: white;
        padding: 15px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #494f25;
    }
</style>