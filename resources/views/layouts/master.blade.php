<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Latest compiled JavaScript -->
    <title>@yield('title')</title>

    @include('layouts.partials.css')
</head>

<body>
   @include('layouts.partials.nav')

   <div class="container mt-3 mb-3">
        @yield('content')
   </div>

   <hr>

   <footer>
        @include('layouts.partials.footer')
   </footer>

    @include('layouts.partials.js')
</body>

</html>
