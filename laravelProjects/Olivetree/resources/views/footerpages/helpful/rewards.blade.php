@extends('layouts.app')

@section('content')
<div class="rewards-container">
    <h1>Rewards Program</h1>
    <div class="rewards-content">
        <p>
            Welcome to our Rewards Program! Earn exciting rewards by being a
            valued customer.
        </p>
        <h2>How it Works</h2>
        <p>
            Our Rewards Program is designed to thank you for choosing us. Here's
            how it works:
        </p>
        <ol>
            <li>Make a purchase and earn points based on your total spend.</li>
            <li>Accumulate points to unlock different reward tiers.</li>
            <li>
                Redeem your points for discounts, exclusive items, or special
                promotions.
            </li>
        </ol>
        <h2>Joining the Program</h2>
        <p>
            All customers are automatically enrolled in our Rewards Program. No
            need to sign up separately!
        </p>
        <h2>Check Your Points</h2>
        <p>
            You can check your points balance and view available rewards in your
            account dashboard.
        </p>
        <h2>Terms and Conditions</h2>
        <p>
            Please review our Rewards Program terms and conditions for detailed
            information on point calculations, expiration, and redemption rules.
        </p>
    </div>
</div>
@endsection

<style scoped>
    .rewards-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px 20px;
    }

    h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .rewards-content {
        max-width: 800px;
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