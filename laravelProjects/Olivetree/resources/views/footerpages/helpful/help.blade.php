@extends('layouts.app')

@section('content')
<div class="containerHelp">
    <h1>Help Center</h1>
    <p>
        Welcome to our Help Center. If you need assistance, please refer to the
        information below or contact our support team.
    </p>
    <div class="help-section">
        <h2>Contact Information</h2>
        <p>Email: olivetreesupport@gmail.com</p>
        <p>Phone: (123) 456-7890</p>
    </div>
    <div class="help-section">
        <h2>Common Issues</h2>
        <p>Forgot Password</p>
        <p>Payment Issues</p>
    </div>
</div>
@endsection

<style scoped>
    .containerHelp {
        max-width: 800px;
        margin: 20px auto;
    }

    .help-section {
        margin-bottom: 20px;
    }

    .help-section h2 {
        margin-bottom: 10px;
    }

    .help-section ul {
        list-style-type: none;
        padding: 0;
    }

    .help-section li {
        margin-bottom: 5px;
    }
</style>