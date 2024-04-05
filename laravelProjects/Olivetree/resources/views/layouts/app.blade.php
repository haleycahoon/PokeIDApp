<!DOCTYPE html>
<html lang="en">
    <head>
    <!-- meta tags -->
    <meta charset="utf-8">
    <link rel="icon" href="{{ asset('favicon.ico') }}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ config('app.name') }}</title>

    <!-- bootstrap ccons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <!-- font awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fascinate&family=Rajdhani:wght@800&display=swap" rel="stylesheet">

    <!-- local css -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <!-- local javascript -->
    <script src="{{ asset('js/app.js') }}" defer></script>
</head>
<body class="">
    <!-- header content -->
    @include('partials.header')

    <!-- content section -->
    <div class="container">
      <div class="col-12">
        <a href="{{ url()->previous() }}" class="btn mb-3">Back</a>
      </div>
        @yield('content')
    </div>

    <!-- footer content -->
    @include('partials.footer')
</body>
<style>

.container {
  margin: 0 auto;

}
nav {
  padding: 30px;
}

nav a {
  color: #2c3e50;
}
h1{
  font-family: "Inconsolata", monospace;
}

.btn{
  color: white;
}
/* p{
  font-family: "Inconsolata", monospace;
  font-optical-sizing: auto;
  font-style: normal;
} */

</style>