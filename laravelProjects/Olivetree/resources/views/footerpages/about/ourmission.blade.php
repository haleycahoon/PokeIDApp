@extends('layouts.app')

@section('content')
<div class="our-mission-container">
    <h1>Our Mission</h1>
    <div class="our-mission-content">
        <p>
            At Olivetree, our mission is to inspire confidence and empower
            individuals through fashion. We believe that clothing is a powerful
            form of self-expression, and everyone deserves to feel confident and
            comfortable in what they wear.
        </p>
        <p>
            We are committed to providing high-quality, on-trend fashion that
            caters to diverse styles and preferences. Our mission extends beyond
            selling clothes; we aim to create a community where individuals can
            embrace their uniqueness and celebrate their personal style.
        </p>
        <p>
            Through a dedication to quality, innovation, and customer
            satisfaction, we strive to be a trusted source for fashion
            enthusiasts. Join us on our mission to redefine fashion, one confident
            step at a time.
        </p>
    </div>
</div>
@endsection

<style scoped>
.our-mission-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 40px 20px;
  background-color: #f9f9f9;
}

h1 {
  font-size: 36px;
  margin-bottom: 20px;
  color: #333;
}

.our-mission-content {
  max-width: 800px;
  text-align: center;
}

p {
  font-size: 16px;
  line-height: 1.6;
  margin-bottom: 20px;
  color: #444;
}
</style>
