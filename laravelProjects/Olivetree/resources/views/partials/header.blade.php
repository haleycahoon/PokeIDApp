<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sliding Navbar Example</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <!-- overlay for background -->
    <div id="overlay" class="overlay" onclick="closeNav()"></div>

    <!-- navigation button -->
    <button type="button" class="openbtn" onclick="openNav()">☰ Shop</button>

    <!-- quote carousel at top -->
    <div id="quoteCarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <p class="quote text-center">
                    $35 REAL Crew Sweatshirt <span>Shop now</span><span>Details</span>
                </p>
            </div>
        </div>
        <!-- carousel controls -->
        <a class="carousel-control-prev" href="#quoteCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#quoteCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- brand img -->
    <div class="brand-section">
        <a href="{{ route('index') }}" class="navbar-logo">
            <img class="brand" src="{{ asset('images/olivetree.png') }}" alt="Logo" />
        </a>
    </div>




    <!-- sidebar nav-->
    <div id="mySidebar" class="sidebar">
        <!-- close button for nav-->
        <a type="button" class="closebtn" onclick="closeNav()">×</a>
        <!-- navigation links -->
        <div class="navbar-links"><br>
        @if(Auth::check())
    <div class="welcome-message">
        <p>Welcome, {{ Auth::user()->name }}</p>
    </div>
    @endif
            <a href="{{ route('index') }}" class="navbar-item">Home</a>
            <a href="{{ route('men') }}" class="navbar-item">Men</a>
            <a href="{{ route('women') }}" class="navbar-item">Women</a>
            <a href="{{ route('accessories') }}" class="navbar-item">Accessories</a>
            
            @if(Auth::check())
                <a href="{{ route('account') }}" class="navbar-item">Account</a>
                <!-- Add other authenticated user links as needed -->
                <form id="logout-form" action="{{ route('logout') }}" method="POST">
                @csrf
                <button type="submit" class="navbar-item logout-button">Logout</button>
            </form>
            @else
                <a href="{{ route('login') }}" class="navbar-item">Login</a>
                <a href="{{ route('register') }}" class="navbar-item">Register</a>
            @endif
        </div>
    </div>
</body>

    <style>
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1;
            display: none;
        }

        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            z-index: 2;
            top: 0;
            left: 0;
            background-color: white;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .closebtn {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 20px;
            color: #93a04a;
            cursor: pointer;
        }

        .navbar-links {
            display: flex;
            flex-direction: column;
            margin-top: 20px;
        }

        .navbar-item {
            padding: 10px 0;
            text-decoration: none;
            font-size: 20px;
            color: #93a04a;
            transition: 0.3s;
        }

        .navbar-item:hover {
            color: darkolivegreen;
        }

        .carousel {
            margin-top: 20px;
            width: 100%;
        }

        .quote {
            color: black;
            font-size: 20px;
            margin-bottom: 20px;
        }

        .quote span {
            font-size: 16px;
            font-weight: bold;
            text-decoration: underline;
            cursor: pointer;
            margin: 0 5px;
        }

        .openbtn {
            position: fixed;
            top: 20px;
            left: 20px;
            font-size: 20px;
            cursor: pointer;
            color: white;
            border: none;
            background-color: #93a04a;
            padding: 10px 20px;
            z-index: 3;
        }

        .openbtn:hover {
            background-color: #444;
        }

        .brand-section {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #fff;
        }

        .brand-section .navbar-logo img {
            height: 100px;
        }

        .welcome-message {
            padding: 10px 0;
            text-decoration: none;
            font-size: 20px;
            color: black;
            transition: 0.3s;
        }

        .logout-button{
            background-color: none;
            outline: none;

        }

        .logout-button {
        background-color: transparent;
        border: none;
        outline: none;
        cursor: pointer;
        font-size: 20px;
        color: #93a04a;
        transition: 0.3s;
        }

        .logout-button:hover {
            color: darkolivegreen;
        }
        
    </style>
    <script>
        function openNav() {
            document.getElementById("mySidebar").style.width = "250px";
            // show overlay
            document.getElementById("overlay").style.display = "block";
            document.getElementsByClassName("content")[0].style.marginLeft = "250px";
        }

        function closeNav() {
            document.getElementById("mySidebar").style.width = "0";
            // hide overlay
            document.getElementById("overlay").style.display = "none";
            document.getElementsByClassName("content")[0].style.marginLeft = "0";
        }

        window.addEventListener('load', function () {
            closeNav();
        });
    </script>


</html>
