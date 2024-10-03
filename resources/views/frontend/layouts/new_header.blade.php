<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @if (isset($details))
        <meta property="og:title"
              content="{{ $details->get_brand_name->brand_name ?? '' }} {{ $details->model_name ?? '' }} {{ $details->make_year ?? '' }}">
        <meta property="og:description" content="Your Description Here">
        <meta property="og:image" content="{{ asset('images/') }}/{{ $details->get_images[0]->images }}">
        <meta property="og:image:width" content="1200"/>
        <meta property="og:image:height" content="630"/>
    @endif
    <link style="width: 100%" rel="icon" href="{{asset('web-assets/images/fav.png')}}" type="image/png">
    <link rel="stylesheet" href="{{asset("web-assets/css/plugins.css")}}">
    <link rel="stylesheet" href="{{asset("web-assets/css/custom.css")}}">
    <link rel="stylesheet" href="{{asset("web-assets/css/responsive.css")}}">
    <title>@yield('title')</title>
</head>
<body>

@include('frontend.layouts.menu')
@yield('content')
@include("frontend.layouts.footer")

<script src="{{asset('web-assets/js/plugins.js')}}"></script>
<script src="{{asset('web-assets/js/index.js')}}"></script>
</body>
</html>
