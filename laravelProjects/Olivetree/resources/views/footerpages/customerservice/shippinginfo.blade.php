@extends('layouts.app')

@section('content')
<div class="shipping-container">
    <h1>Shipping Information</h1>
    <div class="shipping-content">
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </p>
        <p>
            Our standard shipping takes 3-5 business days. For expedited shipping,
            please contact our customer support.
        </p>
        <h2>Shipping Rates</h2>
        <p>
            We offer flat-rate shipping based on your location. Shipping costs
            will be calculated at checkout.
        </p>
        <h2>Tracking Your Order</h2>
        <p>
            Once your order has shipped, you will receive a confirmation email
            with a tracking number. You can track your order's status using this
            number.
        </p>
    </div>
</div>
@endsection

<style scoped>
    .shipping-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 20px;
    }

    h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .shipping-content {
        max-width: 600px;
    }

    h2 {
        font-size: 24px;
        margin-top: 15px;
    }

    p {
        font-size: 16px;
        line-height: 1.6;
        margin-bottom: 15px;
    }
</style>