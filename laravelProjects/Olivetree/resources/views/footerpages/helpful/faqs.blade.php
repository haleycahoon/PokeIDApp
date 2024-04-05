@extends('layouts.app')

@section('content')
<div class="faq-container">
    <h1>Frequently Asked Questions</h1>
    <div class="faq-content">
        <div class="faq-item">
            <h2>How can I track my order?</h2>
            <p>You can track your order by visiting the 'Track Your Order' page and entering your order number and email
                address.</p>
        </div>
        <div class="faq-item">
            <h2>What is your return policy?</h2>
            <p>We offer returns and exchanges within 30 days of the purchase date. Please refer to our Returns &
                Exchanges page for more details.</p>
        </div>
        <div class="faq-item">
            <h2>How do I contact customer support?</h2>
            <p>You can contact our customer support team through live chat, email, or by calling our toll-free number.
                Visit the 'Contact Us' page for more information.</p>
        </div>
    </div>
</div>
@endsection

<style scoped>
    .faq-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px 20px;
    }

    h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .faq-content {
        max-width: 800px;
    }

    .faq-item {
        margin-bottom: 20px;
    }

    h2 {
        font-size: 24px;
        margin-bottom: 10px;
    }

    p {
        font-size: 16px;
        line-height: 1.6;
    }
</style>