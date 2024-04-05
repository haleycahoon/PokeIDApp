@extends('layouts.app')

@section('content')
<div class="contact-container">
    <div class="contact-content">
        <h1 class="contact-title">Contact Us</h1>
        <p>
            Have a question or need assistance? Our dedicated support team is here to help! Whether you have inquiries
            about our products, your order, or just want to share feedback, we're available to assist you. Feel free to
            reach out via live chat, phone, or email.
        </p>
        <p>
            Address: 123 Main Street, Cityville, Country
        </p>
        <p>
            Phone: 555-1234 | Email: olivetreesupport@gmail.com
        </p>
    </div>
    <div class="contact-form">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Your Full Name" />

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Your Email Address" />

        <label for="message">Message:</label>
        <textarea id="message" name="message" placeholder="How can we assist you?" rows="6"></textarea>
    </div>
</div>
@endsection

<style scoped>
.contact-container {
  display: flex;
  justify-content: center;
  align-items: center;
  color: #000000;
  background-color: #ffffff;
  padding: 50px 20px;
  text-align: center;
}

.contact-content {
  max-width: 600px;
}

.contact-title {
  font-size: 36px;
  margin-bottom: 20px;
}

.contact-form {
  max-width: 400px;
  text-align: left;
  margin-left: 20px;
}

label {
  display: block;
  margin-bottom: 8px;
  font-size: 14px;
  color: #ccc;
}

input,
textarea {
  width: 100%;
  padding: 12px;
  margin-bottom: 20px;
  color: #333;
  background-color: #eee;
  border: 1px solid #ccc;
  border-radius: 5px;
}
</style>
