<header class="desktopMenu">
    <div class="container">
        <nav>
            <a class="logo" href="{{ route('home') }}">
                <img src="{{asset("web-assets/images/logo.png")}}" alt="">
            </a>
            <ul class="mainMenu">
                <li>
                    <a href="" data-menu="catMenu">
                        Rent a Car
                        <i class="fas fa-caret-down"></i>
                    </a>
                    <div id="catMenu" class="category-menu">
                        <div class="catRow">
                            <div class="catCol">
                                <h4>Categories</h4>
                                <ul>
                                    <li>
                                        <a href="{{route('services',['category[]' => 'Economy'])}}">
                                            Economy Cars
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['category[]' => 'Luxury'])}}">
                                            Luxury Car Rental Dubai
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['category[]' => 'Sports'])}}">
                                            Sports Car Rental Dubai
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['category[]' => 'Special Edition'])}}">
                                            Special Edition
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['category[]' => 'Muscle Cars'])}}">
                                            Muscle Cars
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['category[]' => 'Electric'])}}">
                                            Electric Cars
                                        </a>
                                    </li>
                                </ul>
                                <h4>Other</h4>
                                <ul>
                                    <li>
                                        <a href="{{route('list-your-rental-cars')}}">
                                            List Your Cars
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{route('companies')}}">
                                            Directory
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="catCol">
                                <h4>body types</h4>
                                <ul>
                                    <li>
                                        <a href="{{route('services',['body_type[]' => 'SUV'])}}">SUV</a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['body_type[]' => 'Sedan'])}}">Sedan</a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['body_type[]' => 'Crossover'])}}">Crossover</a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['body_type[]' => 'Convertible'])}}">Convertible</a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['body_type[]' => 'Compact'])}}">Compact</a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['body_typee[]' => 'Coupe'])}}">Coupe</a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['body_type[]' => 'Van'])}}">Van</a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['body_type[]' => 'Special Needs'])}}">Special
                                            Needs</a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['body_type[]' => 'Hybrid'])}}">Hybrid</a>
                                    </li>
                                    <li>
                                        <a href="{{route('services',['body_type[]' => 'Pickup Truck'])}}">Pickup
                                            Truck</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="catCol">
                                <h4>rental by periods</h4>
                                <ul>
                                    <li><a href="#">Daily Car Rental</a></li>

                                    <li><a href="#">Weekly Car Rental</a></li>

                                    <li><a href="#">Monthly Car Rental</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="" data-menu="brandMenu">
                        Car Brands
                        <i class="fas fa-caret-down"></i>
                    </a>
                    <div class="brandMenu" id="brandMenu">
                        <ul>
                            @foreach ($brands as $brand)
                                <li>
                                    <a class="dropdown-item brand_drop"
                                       href="{{ route('services', ['slug' => $brand->slug]) }}">
                                        <img src="{{ asset('brands/' . $brand->brand_image) }}"
                                             alt="">
                                        {{ $brand->brand_name }}</a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="" data-menu="catMenu2">
                        Car with Drivers
                        <i class="fas fa-caret-down"></i>
                    </a>
                    <div id="catMenu2" class="category-menu small">
                        <div class="catRow">
                            <div class="catCol">
                                <ul>
                                    @foreach ($services as $service_type)
                                        <li>
                                            <a class="dropdown-item"
                                               href="{{route('car-with-driver',['service_type' => $service_type])}}">
                                                {{$service_type}} <strong class="float-end">»</strong></a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            @if (!Auth::check())
                <a class="themeBtn" href="#" data-bs-toggle="modal" data-bs-target="#login">
                    Login / Signup
                </a>
            @endif
            @if (Auth::check())
                <li class="ms-2">
                    <div class="dropdown">
                        <img class="user_img" data-bs-toggle="dropdown" aria-expanded="false"
                             src="{{ asset('web-assets/images/user.png') }}" alt="">
                        <span class="text-light">&nbsp; {{Auth::user()->name}}</span>
                        <ul class="dropdown-menu new_dropdown_menu">
                            @if (Auth::check() && Auth::user()->role == 3)
                                <li><a class="dropdown-item"
                                       href="{{ route('my-profile') }}">Dashboard</a></li>
                                <li><a class="dropdown-item"
                                       href="{{ route('wishlist') }}">Wishlist</a></li>
                                <li><a class="dropdown-item"
                                       href="{{ route('user-logout') }}">Logout</a></li>
                            @endif
                            @if (Auth::check() && Auth::user()->role == 2)
                                <li><a class="dropdown-item"
                                       href="{{ route('vendor-dashboard') }}">Dashboard</a></li>
                                <li>
                                    <a class="dropdown-item" href="{{ route('rent-car.index') }}">
                                        Car Listing
                                    </a>
                                </li>
                                <li>
                                    <form id="logout-form" action="{{ route('vendor-logout') }}"
                                          method="POST">
                                        @csrf
                                        <button class="dropdown-item" type="submit">
                                            Logout
                                        </button>
                                    </form>
                                </li>
                            @endif

                            @if (Auth::check() && Auth::user()->role == 1)
                                <li><a class="dropdown-item"
                                       href="{{ route('admin-home') }}">Dashboard</a></li>

                            @endif
                            {{-- <li><a class="dropdown-item" href="#">Something </a></li> --}}
                        </ul>
                    </div>
                </li>
            @endif
        </nav>
    </div>
</header>

<header class="mobileMenu">
    <div class="container-lg">
        <div class="row">
            <div class="col-12">
                <nav>
                    <button>
                        <i class="fas fa-map-pin"></i>
                        <span>Dubai</span>
                    </button>
                    <div class="mobileSearchBar mobile">
                        <form action="{{route('services')}}">
                            <div class="inputCont">
                                <button type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                                <input type="search" name="" id="" placeholder="Search for car rental in Dubai">
                            </div>
                        </form>
                    </div>
                    <button class="userBtn" id="menuToggle">
                        <i class="fas fa-user-circle"></i>
                    </button>
                </nav>
            </div>
        </div>
    </div>
    <div class="sideMenu">
        <div class="nav">
            <button class="closeBtn">
                <i class="fas fa-times"></i>
            </button>
            <ul>
                <li>
                    <a href="{{ route('home') }}"><span>Home</span></a>
                </li>
                <li>
                    <a href="javascript:;" data-menu="rent"><span>Rent a Car</span><i
                            class="fas fa-caret-right"></i></a>
                </li>
                <li>
                    <a href="javascript:;" data-menu="brands"><span>Car Brands</span><i class="fas fa-caret-right"></i></a>
                </li>
                <li>
                    <a href="javascript:;" data-menu="cwd"><span>Car with Drivers</span><i
                            class="fas fa-caret-right"></i></a>
                </li>
                <li>
                    <a href="{{ route('about-us') }}"><span>About Us</span></a>
                </li>
                <li>
                    <a href="{{ route('blogs') }}"><span>Blogs</span></a>
                </li>
                <li>
                    <a href="{{ route('faq') }}"><span>FAQs</span></a>
                </li>
                <li>
                    <a href="{{ route('contact-us') }}"><span>Contact Us</span></a>
                </li>
            </ul>
            <div class="subMenu" id="rent">
                <button class="subMenuCloseBtn">
                    <i class="fas fa-times"></i>
                </button>
                <ul>
                    <li>
                        <h4>Categories</h4>
                    </li>
                    <li>
                        <a href="{{route('services',['category[]' => 'Economy'])}}">
                            <span>Economy Cars</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['category[]' => 'Luxury'])}}">
                            <span>Luxury Car Rental Dubai</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['category[]' => 'Sports'])}}">
                            <span>Sports Car Rental Dubai</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['category[]' => 'Special Edition'])}}">
                            <span>Special Edition</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['category[]' => 'Muscle Cars'])}}">
                            <span>Muscle Cars</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['category[]' => 'Electric'])}}">
                            <span>Electric Cars</span>
                        </a>
                    </li>
                    <li>
                        <h4>Other</h4>
                    </li>
                    <li>
                        <a href="{{route('list-your-rental-cars')}}">
                            <span>List Your Cars</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('companies')}}">
                            <span>Directory</span>
                        </a>
                    </li>
                    <li>
                        <h4>body types</h4>
                    </li>
                    <li>
                        <a href="{{route('services',['body_type[]' => 'SUV'])}}">
                            <span>SUV</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['body_type[]' => 'Sedan'])}}">
                            <span>Sedan</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['body_type[]' => 'Crossover'])}}">
                            <span>Crossover</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['body_type[]' => 'Convertible'])}}">
                            <span>Convertible</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['body_type[]' => 'Compact'])}}">
                            <span>Compact</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['body_typee[]' => 'Coupe'])}}">
                            <span>Coupe</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['body_type[]' => 'Van'])}}">
                            <span>Van</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['body_type[]' => 'Special Needs'])}}">
                            <span>Special Needs</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['body_type[]' => 'Hybrid'])}}">
                            <span>
                                Hybrid
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('services',['body_type[]' => 'Pickup Truck'])}}">
                            <span>
                                Pickup Truck
                            </span>
                        </a>
                    </li>
                    <li>
                        <h4>rental by periods</h4>
                    </li>
                    <li><a href="#">Daily Car Rental</a></li>

                    <li><a href="#">Weekly Car Rental</a></li>

                    <li><a href="#">Monthly Car Rental</a></li>
                </ul>
            </div>
            <div class="subMenu" id="brands">
                <button class="subMenuCloseBtn">
                    <i class="fas fa-times"></i>
                </button>
                <ul>
                    @foreach ($brands as $brand)
                        <li>
                            <a href="{{ route('services', ['slug' => $brand->slug]) }}">
                                <img src="{{ asset('brands/' . $brand->brand_image) }}"
                                     alt="">
                                <span>{{ $brand->brand_name }}</span>
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
            <div class="subMenu" id="cwd">
                <button class="subMenuCloseBtn">
                    <i class="fas fa-times"></i>
                </button>
                <ul>
                    @foreach ($services as $service_type)
                        <li>
                            <a href="{{route('car-with-driver',['service_type' => $service_type])}}">
                                <span>{{$service_type}}</span>
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</header>
