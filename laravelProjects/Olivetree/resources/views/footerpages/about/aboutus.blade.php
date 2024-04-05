@extends('layouts.app')

@section('content')
<div class="about-us-container">
    <h1>About Us</h1>
    <div class="about-us-content">
        <img src="../assets/olivetree.png" alt="Olivetree Logo" class="company-logo" />
        <p>
            Welcome to Olivetree, your ultimate destination for fashion and style.
            At Olivetree, we believe in the power of clothing to express
            individuality and boost confidence. Our mission is to provide you with
            a curated collection of trendy and high-quality clothing that reflects
            your unique personality.
        </p>
        <h2>Our Story</h2>
        <p>
            Olivetree was founded in 2024 with a passion for bringing the latest
            fashion trends to our customers. Since our inception, we have been
            committed to offering a diverse range of stylish clothing that suits
            different tastes and preferences. Our journey is marked by a
            dedication to quality, innovation, and customer satisfaction.
        </p>
        <h2>Our Values</h2>
        <p>
            Customer Delight: We prioritize the happiness and satisfaction of our
            customers in every interaction. Quality Fashion: Olivetree is
            dedicated to delivering high-quality, on-trend clothing for every
            wardrobe. Style and Diversity: We celebrate individuality and aim to
            provide clothing that embraces diverse styles and personalities.
        </p>
        <h2>Meet Our Team</h2>
        <p>
            The Olivetree team is a group of fashion enthusiasts who bring
            creativity and expertise to curate the best fashion collections. From
            our designers to customer support, every team member plays a crucial
            role in making Olivetree a fashion destination you can trust.
        </p>
        <!-- You can add team member profiles or a group photo here if desired -->
    </div>
</div>
@endsection

<style scoped>
    .about-us-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 40px 20px;
        text-align: center;
    }

    h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .about-us-content {
        max-width: 800px;
    }

    .company-logo {
        width: 300px;
        height: 150px;
        object-fit: cover;
        margin-bottom: 20px;
        align-items: center;
    }

    p {
        font-size: 16px;
        line-height: 1.6;
        margin-bottom: 15px;
    }

    h2 {
        font-size: 24px;
        margin-top: 15px;
        text-decoration: underline;
    }

    ul {
        margin-bottom: 15px;
    }

    li {
        margin-bottom: 8px;
    }
</style>