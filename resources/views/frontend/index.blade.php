@extends('frontend.layouts.new_header')
@section('title', 'Rent a Car Dubai | Home')
@section('content')

    <section class="heroSec">
        <img src="{{asset("web-assets/images/hero_bg.webp")}}" alt="">
        <div class="content">
            <div class="container-lg">
                <div class="row">
                    <div class="col-md-6">
                        <h1>
                            Find Your Best
                            <span>
                                Dream Car for Rental.
                            </span>
                        </h1>
                        <p>
                            Drive the Extraordinary: Rent a Car, Elevate Your Dubai Experience.
                        </p>
                        <p>
                            Unmatched Luxury, Unforgettable Journeys.
                        </p>
                        <a href="" class="themeBtn">
                            Book Now
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <form class="searchBar desktop" action="{{route('services')}}">
        <div class="inputCont">
            <input type="search" id="search_input" placeholder="Search" type="text" name="search_input">
            <button class="themeBtn" type="submit">Search</button>
        </div>
        <div class="suggestions"></div>
    </form>

    <section class="categorySec">
        <div class="container-lg">
            <div class="row">
                <div class="col-12">
                    <h2 class="secHeading">
                        Choose by categories
                    </h2>
                </div>
            </div>
            <div class="row" id="category-container">
                @if(!empty($categoriesWithCounts))
                    @php
                        $initialCount = 7;
                        $totalCategories = count($categoriesWithCounts);
                    @endphp

                    @foreach ($categoriesWithCounts as $index => $category)
                        <div class="col-lg-3 col-4 category-item"
                             data-two="{{ $category->category }}"
                             @if ($index >= $initialCount) style="display:none;" @endif>
                            <a href="{{ route('services', ['category' => [$category->category]]) }}"
                               class="categoryCard">
                                <div class="cardImg">
                                    @if ($category->category == 'Coupe') <img
                                        src="{{ asset('category/Coupe.png') }}" alt/>
                                    @elseif($category->category == 'Sedan') <img
                                        src="{{ asset('category/sedan-car2.webp') }}" alt/>
                                    @elseif($category->category == 'Suv') <img src="{{ asset('category/Suv.png') }}"
                                                                               alt/>
                                    @elseif($category->category == '7 Seater') <img
                                        src="{{ asset('category/7 Seater.png') }}" alt/>
                                    @elseif($category->category == 'Compact') <img
                                        src="{{ asset('category/Compact.png') }}" alt/>
                                    @elseif($category->category == 'Crossover') <img
                                        src="{{ asset('category/Crossover.png') }}" alt/>
                                    @elseif($category->category == 'Luxury') <img
                                        src="{{ asset('category/luxury.png') }}" alt/>
                                    @elseif($category->category == 'ELECTRIC') <img
                                        src="{{ asset('category/ELECTRIC.png') }}" alt/>
                                    @elseif($category->category == 'SPORT') <img
                                        src="{{ asset('category/SPORT.png') }}" alt/>
                                    @elseif($category->category == 'MONTHLY') <img
                                        src="{{ asset('category/MONTHLY.png') }}" alt/>
                                    @elseif($category->category == 'LOW PRICE') <img
                                        src="{{ asset('category/LOW PRICE.png') }}" alt/>
                                    @elseif($category->category == 'Hatchback') <img
                                        src="{{ asset('category/Hatchback.png') }}" alt/>
                                    @elseif($category->category == 'SUPER CAR') <img
                                        src="{{ asset('category/SUPER CAR.png') }}" alt/>
                                    @elseif($category->category == 'CarWithDriver') <img
                                        src="{{ asset('category/CarWithDriver.png') }}" alt/>
                                    @elseif($category->category == 'CONVERTIBLE')
                                        <img src="{{ asset('category/Ferrari FF 2023.png') }}" alt/>
                                    @else
                                        <img src="{{ asset('images/') }}/{{ $category->get_images[0]->images }}"
                                             alt=""/>
                                    @endif
                                </div>
                                <div class="cardContent">
                                    <h3>{{ $category->category }}</h3>
                                    <p>{{ $category->car_count }} Cars</p>
                                    {{--                                    <a class="themeBtn"--}}
                                    {{--                                       href="{{ route('services', ['category' => [$category->category]]) }}">--}}
                                    {{--                                        View All Cars--}}
                                    {{--                                    </a>--}}
                                </div>
                            </a>
                        </div>
                    @endforeach

                <!-- Add Car With Driver Category -->
                    <div class="col-lg-3 col-4" data-two="CarWithDriver">
                        <a href="{{ route('car-with-driver') }}" class="categoryCard">
                            <div class="cardImg">
                                <img src="{{ asset('category/Car With Driver.png') }}" alt/>
                            </div>
                            <div class="cardContent">
                                <h3>Car With Driver</h3>
                                <p>{{ $car_with_driver_count }} Cars</p>
                                {{--                                <a class="themeBtn" href="{{ route('car-with-driver') }}">--}}
                                {{--                                    View All Cars--}}
                                {{--                                </a>--}}
                            </div>
                        </a>
                    </div>

                    @if($totalCategories > $initialCount)
                        <div class="col-12 text-center mt-4">
                            <button id="toggle-button" class="themeBtn">Show More</button>
                        </div>
                    @endif
                @endif
            </div>
        </div>
    </section>

    <section class="bannerSec">
        <img src="{{asset('/web-assets/images/mercedes.webp')}}" alt="">
        <div class="content">
            <div class="container-lg">
                <h2>
                    Save big with our cheap car rental!
                </h2>
                <p>
                    (Rephrase This Text) Tired of searching for a ‘rent a car near me’? You have reached just the right
                    place. OneClickDrive.com is a leading car rental marketplace in Dubai featuring budget-friendly car
                    hire
                    deals from reliable rental car companies in the region. You can choose from our extensive inventory
                    of
                    over 2000 vehicles listed by trusted car rental businesses in the UAE. Whether you’re a tourist
                    looking
                    for a car facility or a resident in search of long term rentals, we assure you the cheapest rent
                    cars at
                    the best prices starting as low as AED 30 per day.
                </p>
            </div>
        </div>
    </section>

    <section class="brandSec">
        <div class="container-lg">
            <div class="row">
                <div class="col-12">
                    <h2 class="secHeading">
                        Choose by brands
                    </h2>
                </div>
                <div class="col-12">
                    <div class="brandSwiper swiper">
                        <div class="swiper-wrapper">
                            @php
                                $uniqueBrands = [];
                            @endphp

                            @foreach ($cars as $car_brands)
                                @php
                                    $brand = $car_brands->get_brand_name;
                                    if (!in_array($brand->brand_name, $uniqueBrands)) {
                                        array_push($uniqueBrands, $brand->brand_name);
                                        $car_count = App\Models\BackendModels\Product::where('brand_id', $brand->id)->count();
                                    } else {
                                        continue; // Skip this brand if it's already displayed
                                    }
                                @endphp
                                <div class="swiper-slide">
                                    <a href="{{ route('services', ['slug' => $brand->slug]) }}">
                                        <img src="{{ asset('brands/') }}/{{ $brand->brand_image }}" alt=""/>
                                        <div class="content">
                                            <h3>{{ $brand->brand_name ?? '' }}</h3>
                                            <p>{{ $car_count }} Cars</p>
                                        </div>
                                    </a>
                                </div>
                            @endforeach
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="carsSec">
        <div class="container-lg">
            <div class="row">
                <div class="col-12">
                    <h2 class="secHeading">
                        Best Car Rental Deals in Dubai
                    </h2>
                </div>
                <div class="col-12">
                    <div class="carsSwiper swiper">
                        <div class="swiper-wrapper">
                            @if(!empty($cars))
                                @foreach ($cars as $value)
                                    <div class="swiper-slide">
                                        <div class="carCard">
                                            <a class="imgCont"
                                               href="{{ route('car-details', ['slug' => $value->slug]) }}">
                                                <img src="{{ asset('images/') }}/{{ $value->get_images[0]->images }}"
                                                     alt=""/>
                                            </a>
                                            <div class="wishlistCont">
                                                @if (Auth::check())
                                                    @php
                                                        $wishlistProduct = Auth::user()
                                                            ->wishlist()
                                                            ->where('product_id', $value->id)
                                                            ->first();
                                                    @endphp
                                                    @if ($wishlistProduct)
                                                        <button class="themeBtn wishlist-button"
                                                                data-product-id="{{ $value->id }}">
                                                            <i class="fa fa-heart red_heart"></i>
                                                        </button>
                                                    @else
                                                        <button class="themeBtn wishlist-button"
                                                                data-product-id="{{ $value->id }}">
                                                            <i class="fa fa-heart"></i>
                                                        </button>
                                                    @endif
                                                @else
                                                    <button class="themeBtn wishlist-button"
                                                            data-product-id="{{ $value->id }}">
                                                        <i class="fa fa-heart"></i>
                                                    </button>
                                                @endif
                                            </div>
                                            <a href="{{ route('car-details', ['slug' => $value->slug]) }}">
                                                <div class="content">
                                                    <h2 class="title">{{ $value->get_brand_name->brand_name ?? '' }}
                                                        {{ $value->model_name ?? '' }} {{ $value->make_year ?? '' }}</h2>
                                                    <div class="rent_details">
                                                        <p class="price">
                                                            AED {{ $value->price_per_day ?? '' }} / Day
                                                        </p>
                                                        <p class="price">
                                                            Mileage {{ $value->per_day_mileage ?? '' }}KM / Day
                                                        </p>
                                                    </div>
                                                    <div class="tags">
                                                        <span
                                                            class="properties_border">{{ $value->category ?? '' }}</span>
                                                        <span class="properties_border">{{ $value->car_doors ?? '' }}
                                                                            <svg stroke="currentColor"
                                                                                 fill="currentColor" stroke-width="0"
                                                                                 viewBox="0 0 512 512" height="1em"
                                                                                 width="1em"
                                                                                 xmlns="http://www.w3.org/2000/svg">
                                                                                <path
                                                                                    d="M149.6 41L42.88 254.4c23.8 24.3 53.54 58.8 78.42 97.4 24.5 38.1 44.1 79.7 47.1 119.2h270.3L423.3 41H149.6zM164 64h230l8 192H74l90-192zm86.8 17.99l-141 154.81L339.3 81.99h-88.5zM336 279h64v18h-64v-18z">
                                                                                </path>
                                                                            </svg>
                                                                        </span>
                                                        <span class="properties_border">{{ $value->passengers ?? '' }}
                                                                            <svg stroke="currentColor"
                                                                                 fill="currentColor" stroke-width="0"
                                                                                 viewBox="0 0 24 24" height="1em"
                                                                                 width="1em"
                                                                                 xmlns="http://www.w3.org/2000/svg">
                                                                                <path fill="none"
                                                                                      d="M0 0h24v24H0V0z"></path>
                                                                                <path
                                                                                    d="M15 5v7H9V5h6m0-2H9c-1.1 0-2 .9-2 2v9h10V5c0-1.1-.9-2-2-2zm7 7h-3v3h3v-3zM5 10H2v3h3v-3zm15 5H4v6h2v-4h12v4h2v-6z">
                                                                                </path>
                                                                            </svg>
                                                                        </span>
                                                        <span class="properties_border">{{ $value->bags ?? '' }}
                                                                            <svg stroke="currentColor"
                                                                                 fill="currentColor" stroke-width="0"
                                                                                 viewBox="0 0 24 24" height="1em"
                                                                                 width="1em"
                                                                                 xmlns="http://www.w3.org/2000/svg">
                                                                                <path fill="none"
                                                                                      d="M0 0h24v24H0z"></path>
                                                                                <path
                                                                                    d="M17 6h-2V3c0-.55-.45-1-1-1h-4c-.55 0-1 .45-1 1v3H7c-1.1 0-2 .9-2 2v11c0 1.1.9 2 2 2 0 .55.45 1 1 1s1-.45 1-1h6c0 .55.45 1 1 1s1-.45 1-1c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zM9.5 18H8V9h1.5v9zm3.25 0h-1.5V9h1.5v9zm.75-12h-3V3.5h3V6zM16 18h-1.5V9H16v9z">
                                                                                </path>
                                                                            </svg>
                                                                        </span>
                                                    </div>
                                                    <div class="other_details">
                                                        <div class="right_details_area">
                                                            <p class=""><i
                                                                    class="fa fa-check-circle text_light_green"
                                                                    aria-hidden="true"></i> &nbsp;
                                                                {{ $value->days }} day rental available</p>
                                                            <p class=""><i class="fa fa-info-circle bg_yellow"
                                                                           aria-hidden="true"></i> &nbsp;
                                                                Deposit: AED {{ $value->security_deposit ?? '' }}
                                                            </p>
                                                            @if (!empty($value->insurance_per_day))
                                                                <p class=""><i
                                                                        class="fa fa-check-circle text_light_green"
                                                                        aria-hidden="true"></i> &nbsp; Insurance
                                                                    Included
                                                                </p>
                                                            @endif
                                                        </div>
                                                    </div>

                                                    <div class="left_details_area">
                                                        <div class="customBadge"></div>
                                                        <img
                                                            src="{{ asset('company_logo/') }}/{{ $value->get_user->company_logo ?? '' }}"
                                                            alt=""/>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pt-0">
        <div class="container-lg">
            <div class="row">
                <div class="col">
                    <div>
                        <img class="rounded" width="100%" src="{{ asset('web-assets/images/addnew.jpg') }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="testiSec">
        <div class="container-lg">
            <div class="row">
                <div class="col-md-5">
                    <div class="headingCont">
                        <h3>
                            Our Community
                        </h3>
                        <p>
                            The experiences shared by our distinguished users have always helped us up our game. The
                            OneClickDrive Marketplace is often re engineered as we follow a "Listen Understand Improve"
                            cycle
                        </p>
                    </div>
                </div>
                <div class="col-md-7">
                    <h2 class="secHeading">
                        Testimonials
                    </h2>
                    <div class="swiper testiSwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="testimonialCard">
                                    <div class="userInfo">
                                        <figure>
                                            <img src="{{asset('/web-assets/images/user.png')}}" alt="">
                                        </figure>
                                        <div class="info">
                                            <h4>John Doe</h4>
                                            <p>May 25 2023</p>
                                            <div class="rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <p>
                                        <span>Service Was Excellent</span>
                                        In publishing and graphic design, Lorem ipsum is a placeholder text
                                        commonly used to demonstrate the visual form of a document or a typeface
                                        without relying on meaningful content. Lorem ipsum may be used as a
                                        placeholder before final copy is available.
                                    </p>
                                    <div class="source">
                                        <span>Source: </span>
                                        <img src="{{asset("/web-assets/images/google.png")}}" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="carsSec">
        <div class="container-lg">
            <div class="row">
                <div class="col-12">
                    <h2 class="secHeading">
                        Best Car Rental With Driver in Dubai
                    </h2>
                </div>
                <div class="col-12">
                    <div class="carFullSwiper swiper">
                        <div class="swiper-wrapper">
                            @if(!empty($cars))
                                @foreach ($cars as $value)
                                    <div class="swiper-slide">
                                        <div class="carCard fullCard">
                                            <a class="imgCont"
                                               href="{{ route('car-details', ['slug' => $value->slug]) }}">
                                                <img src="{{ asset('images/') }}/{{ $value->get_images[0]->images }}"
                                                     alt=""/>
                                            </a>
                                            <div class="wishlistCont">
                                                @if (Auth::check())
                                                    @php
                                                        $wishlistProduct = Auth::user()
                                                            ->wishlist()
                                                            ->where('product_id', $value->id)
                                                            ->first();
                                                    @endphp
                                                    @if ($wishlistProduct)
                                                        <button class="themeBtn wishlist-button"
                                                                data-product-id="{{ $value->id }}">
                                                            <i class="fa fa-heart red_heart"></i>
                                                        </button>
                                                    @else
                                                        <button class="themeBtn wishlist-button"
                                                                data-product-id="{{ $value->id }}">
                                                            <i class="fa fa-heart"></i>
                                                        </button>
                                                    @endif
                                                @else
                                                    <button class="themeBtn wishlist-button"
                                                            data-product-id="{{ $value->id }}">
                                                        <i class="fa fa-heart"></i>
                                                    </button>
                                                @endif
                                            </div>
                                            <a href="{{ route('car-details', ['slug' => $value->slug]) }}">
                                                <div class="content">
                                                    <h2 class="title">{{ $value->get_brand_name->brand_name ?? '' }}
                                                        {{ $value->model_name ?? '' }} {{ $value->make_year ?? '' }}</h2>
                                                    <div class="rent_details">
                                                        <p class="price">
                                                            AED {{ $value->price_per_day ?? '' }} / Day
                                                        </p>
                                                        <p class="price">
                                                            Mileage {{ $value->per_day_mileage ?? '' }}KM / Day
                                                        </p>
                                                    </div>
                                                    <div class="tags">
                                                        <span
                                                            class="properties_border">{{ $value->category ?? '' }}</span>
                                                        <span class="properties_border">{{ $value->car_doors ?? '' }}
                                                                            <svg stroke="currentColor"
                                                                                 fill="currentColor" stroke-width="0"
                                                                                 viewBox="0 0 512 512" height="1em"
                                                                                 width="1em"
                                                                                 xmlns="http://www.w3.org/2000/svg">
                                                                                <path
                                                                                    d="M149.6 41L42.88 254.4c23.8 24.3 53.54 58.8 78.42 97.4 24.5 38.1 44.1 79.7 47.1 119.2h270.3L423.3 41H149.6zM164 64h230l8 192H74l90-192zm86.8 17.99l-141 154.81L339.3 81.99h-88.5zM336 279h64v18h-64v-18z">
                                                                                </path>
                                                                            </svg>
                                                                        </span>
                                                        <span class="properties_border">{{ $value->passengers ?? '' }}
                                                                            <svg stroke="currentColor"
                                                                                 fill="currentColor" stroke-width="0"
                                                                                 viewBox="0 0 24 24" height="1em"
                                                                                 width="1em"
                                                                                 xmlns="http://www.w3.org/2000/svg">
                                                                                <path fill="none"
                                                                                      d="M0 0h24v24H0V0z"></path>
                                                                                <path
                                                                                    d="M15 5v7H9V5h6m0-2H9c-1.1 0-2 .9-2 2v9h10V5c0-1.1-.9-2-2-2zm7 7h-3v3h3v-3zM5 10H2v3h3v-3zm15 5H4v6h2v-4h12v4h2v-6z">
                                                                                </path>
                                                                            </svg>
                                                                        </span>
                                                        <span class="properties_border">{{ $value->bags ?? '' }}
                                                                            <svg stroke="currentColor"
                                                                                 fill="currentColor" stroke-width="0"
                                                                                 viewBox="0 0 24 24" height="1em"
                                                                                 width="1em"
                                                                                 xmlns="http://www.w3.org/2000/svg">
                                                                                <path fill="none"
                                                                                      d="M0 0h24v24H0z"></path>
                                                                                <path
                                                                                    d="M17 6h-2V3c0-.55-.45-1-1-1h-4c-.55 0-1 .45-1 1v3H7c-1.1 0-2 .9-2 2v11c0 1.1.9 2 2 2 0 .55.45 1 1 1s1-.45 1-1h6c0 .55.45 1 1 1s1-.45 1-1c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zM9.5 18H8V9h1.5v9zm3.25 0h-1.5V9h1.5v9zm.75-12h-3V3.5h3V6zM16 18h-1.5V9H16v9z">
                                                                                </path>
                                                                            </svg>
                                                                        </span>
                                                    </div>
                                                    <div class="other_details">
                                                        <div class="right_details_area">
                                                            <p class=""><i
                                                                    class="fa fa-check-circle text_light_green"
                                                                    aria-hidden="true"></i> &nbsp;
                                                                {{ $value->days }} day rental available</p>
                                                            <p class=""><i class="fa fa-info-circle bg_yellow"
                                                                           aria-hidden="true"></i> &nbsp;
                                                                Deposit: AED {{ $value->security_deposit ?? '' }}
                                                            </p>
                                                            @if (!empty($value->insurance_per_day))
                                                                <p class=""><i
                                                                        class="fa fa-check-circle text_light_green"
                                                                        aria-hidden="true"></i> &nbsp; Insurance
                                                                    Included
                                                                </p>
                                                            @endif
                                                        </div>
                                                    </div>

                                                    <div class="left_details_area">
                                                        <div class="customBadge"></div>
                                                        <img
                                                            src="{{ asset('company_logo/') }}/{{ $value->get_user->company_logo ?? '' }}"
                                                            alt=""/>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pt-0 addSec">
        <div class="container-lg">
            <div class="row">
                <div class="col">
                    <div>
                        <img width="100%" src="{{ asset('web-assets/images/add.png') }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="docSec">
        <div class="container-lg">
            <div class="row align-items-center">
                <div class="col-12">
                    <h2 class="secHeading">
                        Documents Required for Car Rental in the UAE
                    </h2>
                </div>
                <div class="col-xl-3 col-md-4">
                    <div class="docCard">
                        <div class="cardHeader">
                            <h4>For UAE Residents</h4>
                        </div>
                        <figure>
                            <img src="{{asset('/web-assets/images/01.png')}}" alt="">
                        </figure>
                        <ul>
                            <li>
                                <i class="fas fa-caret-right"></i>
                                Driving License
                            </li>
                            <li>
                                <i class="fas fa-caret-right"></i>
                                Emirates ID
                            </li>
                        </ul>
                        <p>
                            (Residential Visa may be acceptable)
                        </p>
                    </div>
                </div>
                <div class="col-xl-3 col-md-4">
                    <div class="docCard">
                        <div class="cardHeader">
                            <h4>For Tourists visiting the UAE</h4>
                        </div>
                        <figure>
                            <img src="{{asset('/web-assets/images/02.png')}}" alt="">
                        </figure>
                        <ul>
                            <li>
                                <i class="fas fa-caret-right"></i>
                                Passport
                            </li>
                            <li>
                                <i class="fas fa-caret-right"></i>
                                Visit Visa
                            </li>
                            <li>
                                <i class="fas fa-caret-right"></i>
                                Home Country Driving License
                            </li>
                            <li>
                                <i class="fas fa-caret-right"></i>
                                International Driving Permit (IDP)
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-6 col-md-4">
                    <figure class="carImg">
                        <img src="{{asset("/web-assets/images/car2.png")}}" alt="">
                    </figure>
                </div>
            </div>
        </div>
    </section>

    <section class="contentSec">
        <div class="container-lg">
            <div class="row">
                <div class="col-md-5">
                    <figure class="contentImg">
                        <img src="{{asset('/web-assets/images/rent-vector.jpg')}}" alt="">
                    </figure>
                </div>
                <div class="col-md-7">
                    <div class="content">
                        <h3>Find the best car rental company for you</h3>
                        <ul>
                            <li>
                                <i class="fas fa-caret-right"></i>
                                OneTapDrvie.com is the first-ever global car rental and leasing marketplace. We work
                                with 200+ local car rental companies in Dubai. You can choose among their 2000+ verified
                                cars to find the best rental car for you.
                            </li>
                            <li>
                                <i class="fas fa-caret-right"></i>
                                Find cheap car rental deals and discounts for all types of cars: be it for personal or
                                business use. Access competitive, commission-free car rental service in Dubai, Abu
                                Dhabi, Sharjah and Ajman.
                            </li>
                            <li>
                                <i class="fas fa-caret-right"></i>
                                Our car rental partners’ fleet include every car you’ve ever dreamed of. From high-end
                                supercar rentals such as Ferrari, Lamborghini and Rolls Royce to luxury SUVs Range
                                Rover, Mercedes Benz and even economy cars such as Kia Picanto, Nissan Sunny and Renault
                                Duster.
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="benefitSec">
        <div class="container-lg">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="secHeading">
                        Top benefits for renting a car with a driver in Dubai
                    </h2>
                </div>
                <div class="col-md-4">
                    <div class="benefitCard">
                        <figure>
                            <img src="{{asset('/web-assets/images/seat-belt.png')}}" alt="">
                        </figure>
                        <h4>Sit back and relax</h4>
                        <p>
                            Let our professional chauffeur take the wheel and handle the traffic while you unwind. With
                            their expertise in navigating the city, they ensure a comfortable journey tailored to your
                            preferences.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="benefitCard">
                        <figure>
                            <img src="{{asset('/web-assets/images/price-tag.png')}}" alt="">
                        </figure>
                        <h4>Pre-decided Rates</h4>
                        <p>
                            Enjoy transparent pricing with OneTapDrive. Our rates are inclusive of the number of hours
                            booked within Dubai's city limits, eliminating any surprises and giving you peace of mind.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="benefitCard">
                        <figure>
                            <img src="{{asset('/web-assets/images/counter.png')}}" alt="">
                        </figure>
                        <h4>Top-Class Concierge</h4>
                        <p>
                            OneTapDrive connects you with the most reputable chauffeur service companies in the UAE.
                            Rest assured, you'll receive elite service and reliability, making your experience truly
                            exceptional.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="accordion_wrapper">
        <div class="container-lg">
            <div class="row">
                <div class="col-12">
                    <h2 class="secHeading">
                        Frequently Asked Questions
                    </h2>
                    <div class="faqCont">
                        <div class="accordion accordion-flush" id="accordionFlushExample">
                            <div class="accordion-item reveal fade_bottom">
                                <h2 class="accordion-header" id="flush-headingOne">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#flush-collapseOne" aria-expanded="false"
                                            aria-controls="flush-collapseOne">
                                        How can I rent a car using OneTapDrive?
                                    </button>
                                </h2>
                                <div id="flush-collapseOne" class="accordion-collapse collapse"
                                     aria-labelledby="flush-headingOne"
                                     data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        Renting a car through OneTapDrive is simple. Just visit our
                                        website or download the mobile app, select your desired
                                        location, browse through the available car options, compare
                                        prices and make a reservation. Our platform provides a
                                        convenient and hassle-free way to rent a car directly with the
                                        car rental companies.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item reveal fade_bottom">
                                <h2 class="accordion-header" id="flush-headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#flush-collapseTwo" aria-expanded="false"
                                            aria-controls="flush-collapseTwo">
                                        What is the best way to get the best car rental offer?
                                    </button>
                                </h2>
                                <div id="flush-collapseTwo" class="accordion-collapse collapse"
                                     aria-labelledby="flush-headingTwo"
                                     data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        To get the best car rental offer, we recommend comparing prices
                                        and deals from different car rental providers. OneClickDrive
                                        offers a wide range of options from various suppliers, allowing
                                        you to compare prices, vehicle types, and rental terms. Booking
                                        in advance and being flexible with your dates can also help you
                                        secure better deals.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item reveal fade_bottom">
                                <h2 class="accordion-header" id="flush-headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#flush-collapseThree" aria-expanded="false"
                                            aria-controls="flush-collapseThree">
                                        What are the advantages of renting a car compared to using
                                        public transport?
                                    </button>
                                </h2>
                                <div id="flush-collapseThree" class="accordion-collapse collapse"
                                     aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <ul>
                                            <li>
                                                <p class="f-14">
                                                    Flexibility and freedom to explore at your own pace.
                                                </p>
                                            </li>
                                            <li>
                                                <p class="f-14">
                                                    Convenience, especially for traveling with luggage or in
                                                    groups.
                                                </p>
                                            </li>
                                            <li>
                                                <p class="f-14">
                                                    Time-saving, as you can avoid waiting for public
                                                    transport.
                                                </p>
                                            </li>
                                            <li>
                                                <p class="f-14">Privacy and comfort in your own vehicle.</p>
                                            </li>
                                            <li>
                                                <p class="f-14">
                                                    Access to remote or less accessible locations.
                                                </p>
                                            </li>
                                            <li>
                                                <p class="f-14">
                                                    Ability to customize your itinerary and make spontaneous
                                                    stops.
                                                </p>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item reveal fade_bottom">
                                <h2 class="accordion-header" id="flush-headingThree1">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#flush-collapseThree1" aria-expanded="false"
                                            aria-controls="flush-collapseThree1">
                                        What is the best mode of transport in Dubai?
                                    </button>
                                </h2>
                                <div id="flush-collapseThree1" class="accordion-collapse collapse"
                                     aria-labelledby="flush-headingThree1" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <p>
                                            Whether you’re here for a holiday or residing in the UAE, rental cars offer
                                            the
                                            much-needed
                                            flexibility and convenience. The world-class infrastructure Dubai has to
                                            offer
                                            can be
                                            experienced the right way only with a car. You can rent a car based on your
                                            budget,
                                            preference, requirement and even have it delivered to your location.
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item reveal fade_bottom">
                                <h2 class="accordion-header" id="flush-headingThree2">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#flush-collapseThree2" aria-expanded="false"
                                            aria-controls="flush-collapseThree2">
                                        What are my overheads (additional costs) in renting a car?
                                    </button>
                                </h2>
                                <div id="flush-collapseThree2" class="accordion-collapse collapse"
                                     aria-labelledby="flush-headingThree2" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body">
                                        <p>
                                            Your overheads may include salik (toll), fuel and parking on your own as per
                                            your usage.
                                            Delivery and pick-up for the rental car might be charged extra.
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bannerSec">
        <img src="{{asset('/web-assets/images/mercedes.webp')}}" alt="">
        <div class="content">
            <div class="container-lg">
                <h2>
                    <a href="">
                        Are you a car rental company? Join us.
                    </a>
                    <span>
                        List your cars with the UAE's biggest car rental & leasing marketplace today!
                    </span>
                </h2>
            </div>
        </div>
    </section>

@section('script')
    <script>
        const autoCompleteTags = <?php echo json_encode($carsFilter); ?>;
        const searchInput = document.getElementById('search_input');
        const suggestionsContainer = document.querySelector('.suggestions');
        let suggestionIndex = -1;

        // Debounce to prevent excessive filtering on fast typing
        function debounce(func, delay) {
            let timeout;
            return function (...args) {
                clearTimeout(timeout);
                timeout = setTimeout(() => func.apply(this, args), delay);
            };
        }

        function updateSuggestions(input) {
            const filteredTags = autoCompleteTags.filter(tag => tag.toLowerCase().includes(input));
            const html = filteredTags.map(tag => `<div class="suggestion">${tag}</div>`).join('');
            suggestionsContainer.innerHTML = html;
            suggestionsContainer.style.display = filteredTags.length ? 'block' : 'none';
            suggestionIndex = -1;
        }

        searchInput.addEventListener('input', debounce((e) => {
            const input = e.target.value.trim().toLowerCase();
            if (input.length > 0) {
                updateSuggestions(input);
            } else {
                suggestionsContainer.style.display = 'none';
            }
        }, 300)); // Adjust delay as needed

        // Handle suggestion click and input setting
        suggestionsContainer.addEventListener('click', (e) => {
            if (e.target.classList.contains('suggestion')) {
                searchInput.value = e.target.textContent.trim();
                suggestionsContainer.style.display = 'none';
            }
        });

        // Hide suggestions when clicking outside of input or suggestions
        document.addEventListener('click', (e) => {
            if (!suggestionsContainer.contains(e.target) && e.target !== searchInput) {
                suggestionsContainer.style.display = 'none';
            }
        });

        // Handle keyboard navigation and selection of suggestions
        searchInput.addEventListener('keydown', (e) => {
            const suggestions = document.querySelectorAll('.suggestion');
            if (suggestions.length === 0) return;

            if (e.key === 'ArrowDown') {
                suggestionIndex = (suggestionIndex + 1) % suggestions.length;
                updateHighlightedSuggestion(suggestions);
            } else if (e.key === 'ArrowUp') {
                suggestionIndex = (suggestionIndex - 1 + suggestions.length) % suggestions.length;
                updateHighlightedSuggestion(suggestions);
            } else if (e.key === 'Enter' && suggestionIndex >= 0) {
                searchInput.value = suggestions[suggestionIndex].textContent.trim();
                suggestionsContainer.style.display = 'none';
            }
        });

        function updateHighlightedSuggestion(suggestions) {
            suggestions.forEach(suggestion => suggestion.classList.remove('highlighted'));
            if (suggestionIndex >= 0) {
                suggestions[suggestionIndex].classList.add('highlighted');
            }
        }
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
        $(document).ready(function () {
            $('.wishlist-button').on('click', function () {
                var button = $(this);
                var productId = $(this).data('product-id');
                var heartIcon = button.find('.fa-heart');

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $.ajax({
                    url: '{{ route('wishlist.add') }}',
                    type: 'GET',
                    data: {
                        product_id: productId
                    },
                    success: function (response) {
                        if (response.status == 401) {
                            toastr.error(response.message);
                        }
                        if (response.status != 401) {
                            if (heartIcon.hasClass('fa-heart')) {
                                heartIcon.addClass('red_heart');
                                // heartIcon.removeClass('fa-heart');
                            } else {
                                heartIcon.removeClass('red_heart');
                                heartIcon.addClass('fa-heart'); // Add the 'fa-heart' class
                            }
                        }

                        // Update the heart icon after adding to the wishlist
                        if (response.status == 200) {
                            toastr.success('Product added to wishlist');
                        }
                        if (response.status == 202) {
                            heartIcon.removeClass('red_heart');
                            toastr.success('Product removed from wishlist');
                        }
                    }
                });
            });
        });
    </script>
    <script>
        document.getElementById('toggle-button').addEventListener('click', function () {
            var categoryItems = document.querySelectorAll('.category-item');
            var isShowingAll = this.getAttribute('data-showing-all') === 'true';

            categoryItems.forEach(function (item, index) {
                if (index >= {{ $initialCount }}) {
                    item.style.display = isShowingAll ? 'none' : 'block';
                }
            });

            this.innerText = isShowingAll ? 'Show More' : 'Show Less';
            this.setAttribute('data-showing-all', isShowingAll ? 'false' : 'true');
        });

        let search_btn = document.getElementById("search_btn");
        let view_btn = document.getElementById("view_btn");
        let search_input = document.getElementById("search_input");

        search_input.addEventListener('keyup', function (event) {
            if (search_input.value.trim() !== "") {
                search_btn.classList.remove("d-none");
                view_btn.classList.add("d-none");
            } else {
                search_btn.classList.add("d-none");
                view_btn.classList.remove("d-none");
            }
        });
    </script>
@endsection
@endsection
