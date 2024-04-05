@extends('layouts.app')

@section('content')
<div class="returns-exchanges-container">
    <h1>Returns & Exchanges</h1>
    <div class="returns-exchanges-content">
        <p>
            We want you to be completely satisfied with your purchase. If you are
            not satisfied for any reason, we offer returns and exchanges within 30
            days of the purchase date.
        </p>
        <h2>Return Policy</h2>
        <p>To initiate a return, please follow these steps:</p>
        <ol>
            <li>
                Contact our customer support team to request a return authorization.
            </li>
            <li>
                Package your item securely, including the original packaging and any
                accessories.
            </li>
            <li>
                Include a copy of your order confirmation or packing slip inside the
                package.
            </li>
            <li>Ship the package to the provided return address.</li>
        </ol>
        <p>
            Once we receive your return, we will process it within 5 business
            days. Refunds will be issued to the original payment method.
        </p>
        <h2>Exchange Policy</h2>
        <p>
            If you would like to exchange an item, please contact our customer
            support team. We will guide you through the exchange process and
            provide instructions on how to return the original item.
        </p>
    </div>
</div>
@endsection

<style scoped>
    .returns-exchanges-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px 20px;
    }

    h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .returns-exchanges-content {
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

    ol {
        margin-bottom: 15px;
    }

    li {
        margin-bottom: 8px;
    }
</style>