@extends('frontend.layouts.new_header')
@section('title', 'Services | OneTapDrive')
@section('content')

    <div class="sliderBanner swiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <figure class="slideImg" data-swiper-parallax="700">
                    <img src="{{asset('/web-assets/images/slide1.webp')}}" alt="">
                </figure>
                <div data-swiper-parallax="-700" class="content">
                    <h2>list your cars for rent today</h2>
                    <p>Empty your parking lot tomorrow!</p>
                </div>
            </div>
            <div class="swiper-slide">
                <figure class="slideImg" data-swiper-parallax="700">
                    <img src="{{asset('/web-assets/images/slide2.webp')}}" alt="">
                </figure>
                <div data-swiper-parallax="-700" class="content">
                    <h2>join onetap drive car rental marketplace</h2>
                    <p>Earn atleast 5x ROI and an empty parking lot!</p>
                </div>
            </div>
            <div class="swiper-slide">
                <figure class="slideImg" data-swiper-parallax="700">
                    <img src="{{asset('/web-assets/images/slide3.webp')}}" alt="">
                </figure>
                <div data-swiper-parallax="-700" class="content">
                    <h2>get high-quality leads</h2>
                    <p>Who are already interested to rent your cars</p>
                </div>
            </div>
            <div class="swiper-slide">
                <figure class="slideImg" data-swiper-parallax="700">
                    <img src="{{asset('/web-assets/images/slide4.webp')}}" alt="">
                </figure>
                <div data-swiper-parallax="-700" class="content">
                    <h2>showcase your car fleet</h2>
                    <p>In front of 200,000+ Potential Customers</p>
                </div>
            </div>
        </div>
    </div>

    <section class="enquirySec">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="aboutContent contentWrap">
                        <h2 class="secHeading">
                            JOIN NOW
                        </h2>
                        <p>
                            Join OneTapDrive to profit from over 1 million page views every month, with more than 50,000
                            quality leads sent to car rental companies and brokers all across the world.
                        </p>
                        <ul>
                            <li>
                                <i class="fas fa-check"></i>
                                Get direct leads via phone, SMS and emails.
                            </li>
                            <li>
                                <i class="fas fa-check"></i>
                                Full training provided for your staff to use the CMS.
                            </li>
                            <li>
                                <i class="fas fa-check"></i>
                                Assistance from your dedicated Account Manager.
                            </li>
                            <li>
                                <i class="fas fa-check"></i>
                                Tools and resources to plan your marketing strategy.
                            </li>
                            <li>
                                <i class="fas fa-check"></i>
                                Exclusive member benefits
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6">
                    <form action="" class="enquiryForm">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Your Name</label>
                                        <input type="text" placeholder="Enter Your Name">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Company Name</label>
                                        <input type="text" placeholder="Enter Company Name">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Job Title</label>
                                        <input type="text" placeholder="Enter Job Title">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Fleet Size</label>
                                        <select name="" id="">
                                            <option value="" selected disabled>Select Fleet Size</option>
                                            <option value="">5-10 cars</option>
                                            <option value="">Upto to 50 cars</option>
                                            <option value="">Upto to 100 cars</option>
                                            <option value="">Upto to 500 cars</option>
                                            <option value="">500+ cars</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Contact No.</label>
                                        <input type="text" placeholder="Enter Contact No.">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Email Address</label>
                                        <input type="text" placeholder="Enter Email Address">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Country</label>
                                        <input type="text" placeholder="Enter Country">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">City</label>
                                        <input type="text" placeholder="Enter City">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Password</label>
                                        <input type="text" placeholder="Enter Password">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Confirm Password</label>
                                        <input type="text" placeholder="Enter Confirm Password">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Company Logo</label>
                                        <input type="file">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-6">
                                    <div class="inputCont">
                                        <label for="">Company License</label>
                                        <input type="file">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <p>
                                        To advertise on OneTapDrive, you should be a car rental company or broker and
                                        have a registered office.
                                    </p>
                                    <button class="themeBtn">
                                        Submit <i class="fas fa-paper-plane"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <section class="whyJoinSec">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                    <h2 class="secHeading">Why Join OneTapDrive?</h2>
                    <p>
                        Partner up with one of the world’s biggest car rental marketplaces. Our car rental website and
                        app,
                        <br>
                        available on Android and iOS devices, is marketed specifically to renters planning a trip to
                        your city.
                    </p>
                </div>
                <div class="col-md-4">
                    <div class="apartBox">
                        <figure>
                            <img src="{{asset("/web-assets/images/apart1.webp")}}" alt="">
                        </figure>
                        <div class="content">
                            <h4>Exclusive Cars</h4>
                            <p>
                                Whether you’re looking for budget-friendly cars or exclusive luxury and sports cars, we
                                have you covered.
                            </p>
                        </div>
                    </div>
                    <div class="apartBox">
                        <figure>
                            <img src="{{asset("/web-assets/images/apart1.webp")}}" alt="">
                        </figure>
                        <div class="content">
                            <h4>Exclusive Cars</h4>
                            <p>
                                Whether you’re looking for budget-friendly cars or exclusive luxury and sports cars, we
                                have you covered.
                            </p>
                        </div>
                    </div>
                    <div class="apartBox">
                        <figure>
                            <img src="{{asset("/web-assets/images/apart1.webp")}}" alt="">
                        </figure>
                        <div class="content">
                            <h4>Exclusive Cars</h4>
                            <p>
                                Whether you’re looking for budget-friendly cars or exclusive luxury and sports cars, we
                                have you covered.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <figure class="mainImg">
                        <img src="https://www.oneclickdrive.com/application/views/images/list_png.png?vers=7.5" alt="">
                    </figure>
                </div>
                <div class="col-md-4">
                    <div class="apartBox">
                        <figure>
                            <img src="{{asset("/web-assets/images/apart1.webp")}}" alt="">
                        </figure>
                        <div class="content">
                            <h4>Exclusive Cars</h4>
                            <p>
                                Whether you’re looking for budget-friendly cars or exclusive luxury and sports cars, we
                                have you covered.
                            </p>
                        </div>
                    </div>
                    <div class="apartBox">
                        <figure>
                            <img src="{{asset("/web-assets/images/apart1.webp")}}" alt="">
                        </figure>
                        <div class="content">
                            <h4>Exclusive Cars</h4>
                            <p>
                                Whether you’re looking for budget-friendly cars or exclusive luxury and sports cars, we
                                have you covered.
                            </p>
                        </div>
                    </div>
                    <div class="apartBox">
                        <figure>
                            <img src="{{asset("/web-assets/images/apart1.webp")}}" alt="">
                        </figure>
                        <div class="content">
                            <h4>Exclusive Cars</h4>
                            <p>
                                Whether you’re looking for budget-friendly cars or exclusive luxury and sports cars, we
                                have you covered.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-3 faqSec">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="aboutContent">
                        <h2 class="secHeading">Frequently Asked Questions</h2>
                        <div class="accordion" id="accordionExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseOne" aria-expanded="true"
                                            aria-controls="collapseOne">
                                        Why is driving a BMW recommended in Dubai?
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse show"
                                     data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>
                                            Among the popular car choices, BMW is definitely a favorite. In Dubai, more
                                            so,
                                            as itâ€™s perfect for Sheikh Zayed Road as well as on the highways
                                            stretching
                                            across the Emirates. Being one of the most scenic places for those seeking a
                                            luxurious adventure on wheels, BMWs are the most-in-demand cars in Dubai.
                                            Youâ€™ll be driving alongside exotic cars such as Porsche, Mercedes Benz,
                                            Audi,
                                            not to mention a range of sports cars.Many tourists and residents in Dubai
                                            rent
                                            a BMW to soak the pleasure of driving a luxurious sedan. The spacious cabin,
                                            extra legroom, advanced driving and safety features are what BMW vehicles
                                            are
                                            most known for.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseTwo" aria-expanded="false"
                                            aria-controls="collapseTwo">
                                        Can I take the BMW rental car to Abu Dhabi from Dubai?
                                    </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse"
                                     data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>
                                            Yes, you can! Most customers rent a luxury sedan in Dubai to visit Abu Dhabi
                                            and
                                            other emirates. Itâ€™s definitely the best way to explore the UAE. Car
                                            rental
                                            companies allow their vehicles to be driven anywhere in the UAE, barring a
                                            few
                                            locations such as Jebel Hafeet, Jebel Jais and desert areas. Be sure to plan
                                            your drives in advance to make the most of it. Google Maps is your best
                                            friend!If youâ€™re planning a trip to the Grand Mosque, Louvre or Yas
                                            Marina,
                                            consider renting for 2 or more days to offset the additional mileage charge
                                            you
                                            will incur. As most car rentals, including luxury and sports cars, come with
                                            a
                                            standard mileage limit of 250-km per day. Dubai to Abu Dhabi is a good
                                            150-km
                                            away so youâ€™ll probably be clocking over 300 km on the journey back.Best
                                            practice: Consult with the car rental agency regarding your trip plan for
                                            suggestions. Additional mileage packages may be available.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseThree" aria-expanded="false"
                                            aria-controls="collapseThree">
                                        Which type of BMW cars are available for rent in Dubai?
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse"
                                     data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <p>
                                            OneClickDrive.com works with several car rental companies across the world.
                                            In
                                            Dubai, we work with quite a few BMW car rental providers. You can choose
                                            among
                                            cars with a range of engine sizes and additional features, including GPS
                                            navigation, safety and performance enhancements. The BMW sedan comes in
                                            various
                                            4-door sedan, convertible models with advanced features. Different models
                                            including: BMW 2-series, 3-series, 550i, 550 mpower, 730li, 750li, X5, X6
                                            and
                                            more. If youâ€™re looking for a rare BMW car model, contact our suppliers
                                            who
                                            have listed a BMW. They might be able to cater to your distinguished needs.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="aboutContent">
                        <p>
                            <span>note:</span> The above listings including the
                            prices are updated by the respective car rental company. Incase the
                            car is not available at the price mentioned (exclusive of VAT), please
                            inform us and weâ€™ll get back to you with the best alternative. Happy
                            renting!
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="listYourCarBanner">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="addCard">
                            <figure>
                                <img src="{{asset("/web-assets/images/icon_list1.webp")}}" alt="">
                            </figure>
                            <div class="cardContent">
                                <h4>List Your Cars</h4>
                                <p>
                                    Market your car rental fleet on the OneTapDrive website and mobile app. Join one of
                                    the biggest car rental marketplaces in the world.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="addCard">
                            <figure>
                                <img src="{{asset("/web-assets/images/icon_list1.webp")}}" alt="">
                            </figure>
                            <div class="cardContent">
                                <h4>Higher ROI</h4>
                                <p>
                                    A majority of our clients have reported at least 10x ROI with OneTapDrive. The
                                    highest – when compared across all their marketing channels and spends.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="addCard">
                            <figure>
                                <img src="{{asset("/web-assets/images/icon_list1.webp")}}" alt="">
                            </figure>
                            <div class="cardContent">
                                <h4>Stand Tall in your industry</h4>
                                <p>
                                    Showcase your cars among the top list of car rental companies in your city. Increase
                                    your brand recognition, forge partnerships and reinforce your business.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="addBan">
                            <h3>Car Rental Advertising that goes a long way!</h3>
                            <p>
                                Explore the OneTapDrive website and mobile apps
                            </p>
                            <div class="btnCont">
                                <a href="">
                                    <img src="{{asset("/web-assets/images/huawei.webp")}}" alt="">
                                </a>
                                <a href="">
                                    <img src="{{asset("/web-assets/images/apple.webp")}}" alt="">
                                </a>
                                <a href="">
                                    <img src="{{asset("/web-assets/images/google.webp")}}" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="gallerySec">
        @foreach(range(0, 8) as $index)
            <img src="{{ asset('/web-assets/images/cars/' . $index+1 . '.jpg') }}" alt="Image {{ $index }}">
        @endforeach
    </section>

{{--    <div class="list_car_wrapper">--}}

{{--        <section>--}}
{{--            <div class="content_wrap">--}}
{{--                <div class="row">--}}
{{--                    <div class="col-lg-6">--}}
{{--                        <p class="font_semi_bold">--}}
{{--                            Join OneTapDrive to profit from over 1 million page views--}}
{{--                            every month, with more than 50,000 quality leads sent to car--}}
{{--                            rental companies and brokers all across the world.--}}
{{--                        </p>--}}
{{--                        <ul class="">--}}
{{--                            <li>--}}
{{--                                <i class="fa fa-check"></i>Get direct leads via phone, SMS and--}}
{{--                                emails.--}}
{{--                            </li>--}}
{{--                            <li>--}}
{{--                                <i class="fa fa-check"></i>Full training provided for your--}}
{{--                                staff to use the CMS.--}}
{{--                            </li>--}}
{{--                            <li>--}}
{{--                                <i class="fa fa-check"></i>Assistance from your dedicated--}}
{{--                                Account Manager.--}}
{{--                            </li>--}}
{{--                            <li>--}}
{{--                                <i class="fa fa-check"></i>Tools and resources to plan your--}}
{{--                                marketing strategy.--}}
{{--                            </li>--}}
{{--                            <li><i class="fa fa-check"></i>Exclusive member benefits</li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-6">--}}
{{--                        <div class="list_car_form">--}}
{{--                            <form class="row" id="registerCompany" enctype="multipart/form-data">--}}
{{--                                @csrf--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Your Name</label>--}}
{{--                                    <input class="form-control" type="text" name="name" id="name"/>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Company Name</label>--}}
{{--                                    <input class="form-control" type="text" name="company_name" id="company_name"/>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Job Title</label>--}}
{{--                                    <input class="form-control" type="text" id="job_title" name="job_title"/>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Fleet Size</label>--}}
{{--                                    --}}{{-- <input class="form-control" type="text" name="fleet_size" id="fleet_size" /> --}}
{{--                                    <select id="fleet_size" name="fleet_size">--}}
{{--                                        <option value="5-10 cars">5-10 cars</option>--}}
{{--                                        <option value="Up to 50 cars">Up to 50 cars</option>--}}
{{--                                        <option value="Up to 100 cars">Up to 100 cars</option>--}}
{{--                                        <option value="Up to 500 cars">Up to 500 cars</option>--}}
{{--                                        <option value="500+ cars">500+ cars</option>--}}
{{--                                    </select>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Contact No</label>--}}
{{--                                    <input class="form-control" type="text" name="contact" id="contact"/>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Email Address</label>--}}
{{--                                    <input type="email" class="form-control" name="email" id="email"/>--}}

{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Country</label>--}}
{{--                                    --}}{{-- <input type="text" name="country" id="country" /> --}}
{{--                                    <select id="country" name="country">--}}
{{--                                        <option value="United Arab Emirates">United Arab Emirates</option>--}}
{{--                                    </select>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">City</label>--}}
{{--                                    <select id="city" name="city">--}}
{{--                                        <option value="Abu Dhabi">Abu Dhabi</option>--}}
{{--                                        <option value="Ajman">Ajman</option>--}}
{{--                                        <option value="Dubai">Dubai</option>--}}
{{--                                        <option value="Fujairah">Fujairah</option>--}}
{{--                                        <option value="Ras Al Khaimah">Ras Al Khaimah</option>--}}
{{--                                        <option value="Sharjah">Sharjah</option>--}}
{{--                                        <option value="Umm Al Quwain">Umm Al Quwain</option>--}}

{{--                                    </select>--}}
{{--                                    --}}{{-- <input type="text" name="city" id="city" /> --}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Password</label>--}}
{{--                                    <input type="password" class="form-control" name="password" id="password"/>--}}

{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Confirm Password</label>--}}
{{--                                    <input type="password" class="form-control" name="confirm_password"--}}
{{--                                           id="confirm_password"/>--}}

{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Company Logo</label>--}}
{{--                                    <input type="file" name="company_logo" id="company_logo"/>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6 p-2 reveal fade_bottom">--}}
{{--                                    <label for="">Company License</label>--}}
{{--                                    <input type="file" id="company_license" name="company_license"/>--}}
{{--                                </div>--}}
{{--                                <div class="flex_end p-2">--}}
{{--                                    <button--}}
{{--                                        class="styled_button animate_width reveal fade_bottom"--}}
{{--                                    >--}}
{{--                                        Submit--}}
{{--                                    </button>--}}
{{--                                </div>--}}
{{--                                <p class="reveal fade_bottom">--}}
{{--                                    To advertise on OneTapDrive, you should be a car rental--}}
{{--                                    company or broker and have a registered office.--}}
{{--                                </p>--}}
{{--                            </form>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </section>--}}
{{--        <section class="bg_lime">--}}
{{--            <div class="content_wrap">--}}
{{--                <div class="row">--}}
{{--                    <div class="col-lg-12 mb-3 text-center">--}}
{{--                        <h2>Why Join OneTapDrive?</h2>--}}
{{--                        <p class="mb-0">--}}
{{--                            Partner up with one of the world’s biggest car rental--}}
{{--                            marketplaces. Our car rental website and app,--}}
{{--                        </p>--}}
{{--                        <p class="mb-0">--}}
{{--                            available on Android and iOS devices, is marketed specifically--}}
{{--                            to renters planning a trip to your city.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-4 reveal fade_bottom">--}}
{{--                        <div class="about_card_box">--}}
{{--                            <div class="image_wrap">--}}
{{--                                <img--}}
{{--                                    width="70"--}}
{{--                                    height="70"--}}
{{--                                    src="{{asset('assets/images/traffic-jam.webp')}}"--}}
{{--                                />--}}
{{--                            </div>--}}
{{--                            <h2 class="text-center clr_secondary">Exclusive Cars</h2>--}}
{{--                            <p class="text-center">--}}
{{--                                Whether you’re looking for budget-friendly cars or exclusive--}}
{{--                                luxury and sports cars, we have you covered.--}}
{{--                            </p>--}}
{{--                        </div>--}}
{{--                        <div class="about_card_box">--}}
{{--                            <div class="image_wrap">--}}
{{--                                <img--}}
{{--                                    width="70"--}}
{{--                                    height="70"--}}
{{--                                    src="{{asset('assets/images/traffic-jam.webp')}}"--}}
{{--                                />--}}
{{--                            </div>--}}
{{--                            <h2 class="text-center clr_secondary">Exclusive Cars</h2>--}}
{{--                            <p class="text-center">--}}
{{--                                Whether you’re looking for budget-friendly cars or exclusive--}}
{{--                                luxury and sports cars, we have you covered.--}}
{{--                            </p>--}}
{{--                        </div>--}}
{{--                        <div class="about_card_box">--}}
{{--                            <div class="image_wrap">--}}
{{--                                <img--}}
{{--                                    width="70"--}}
{{--                                    height="70"--}}
{{--                                    src="{{asset('assets/images/traffic-jam.webp')}}"--}}
{{--                                />--}}
{{--                            </div>--}}
{{--                            <h2 class="text-center clr_secondary">Exclusive Cars</h2>--}}
{{--                            <p class="text-center">--}}
{{--                                Whether you’re looking for budget-friendly cars or exclusive--}}
{{--                                luxury and sports cars, we have you covered.--}}
{{--                            </p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-4 reveal fade_bottom flex_column_start">--}}
{{--                        <img--}}
{{--                            class="instruction_image"--}}
{{--                            src="https://www.oneclickdrive.com/application/views/images/list_png.png?vers=7.5"--}}
{{--                            alt=""--}}
{{--                        />--}}
{{--                        <button class="styled_button animate_width">--}}
{{--                            <a href="">How It Works</a>--}}
{{--                        </button>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-4 reveal fade_bottom">--}}
{{--                        <div class="about_card_box">--}}
{{--                            <div class="image_wrap">--}}
{{--                                <img--}}
{{--                                    width="70"--}}
{{--                                    height="70"--}}
{{--                                    src="{{asset('assets/images/traffic-jam.webp')}}"--}}
{{--                                />--}}
{{--                            </div>--}}
{{--                            <h2 class="text-center clr_secondary">Exclusive Cars</h2>--}}
{{--                            <p class="text-center">--}}
{{--                                Whether you’re looking for budget-friendly cars or exclusive--}}
{{--                                luxury and sports cars, we have you covered.--}}
{{--                            </p>--}}
{{--                        </div>--}}
{{--                        <div class="about_card_box">--}}
{{--                            <div class="image_wrap">--}}
{{--                                <img--}}
{{--                                    width="70"--}}
{{--                                    height="70"--}}
{{--                                    src="{{asset('assets/images/traffic-jam.webp')}}"--}}
{{--                                />--}}
{{--                            </div>--}}
{{--                            <h2 class="text-center clr_secondary">Exclusive Cars</h2>--}}
{{--                            <p class="text-center">--}}
{{--                                Whether you’re looking for budget-friendly cars or exclusive--}}
{{--                                luxury and sports cars, we have you covered.--}}
{{--                            </p>--}}
{{--                        </div>--}}
{{--                        <div class="about_card_box">--}}
{{--                            <div class="image_wrap">--}}
{{--                                <img--}}
{{--                                    width="70"--}}
{{--                                    height="70"--}}
{{--                                    src="{{asset('assets/images/traffic-jam.webp')}}"--}}
{{--                                />--}}
{{--                            </div>--}}
{{--                            <h2 class="text-center clr_secondary">Exclusive Cars</h2>--}}
{{--                            <p class="text-center">--}}
{{--                                Whether you’re looking for budget-friendly cars or exclusive--}}
{{--                                luxury and sports cars, we have you covered.--}}
{{--                            </p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </section>--}}
{{--        <section class="background_attached">--}}
{{--            <div class="content_wrap">--}}
{{--                <div class="row">--}}
{{--                    <div class="col-lg-4 rent_card_details_cards reveal fade_bottom">--}}
{{--                        <img src="{{asset('assets/images/icon_list1.webp')}}" alt=""/>--}}

{{--                        <h2>List your cars</h2>--}}
{{--                        <p>--}}
{{--                            Market your car rental fleet on the OneTapDrive website and--}}
{{--                            mobile app. Join one of the biggest car rental marketplaces in--}}
{{--                            the world.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-4 rent_card_details_cards reveal fade_bottom">--}}
{{--                        <img src="{{asset('assets/images/icon_list1.webp')}}" alt=""/>--}}
{{--                        <h2>Higher ROI</h2>--}}
{{--                        <p>--}}
{{--                            A majority of our clients have reported at least 10x ROI with--}}
{{--                            OneTapDrive. The highest – when compared across all their--}}
{{--                            marketing channels and spends.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-4 rent_card_details_cards reveal fade_bottom">--}}
{{--                        <img src="{{asset('assets/images/icon_list6.webp')}}" alt=""/>--}}
{{--                        <h2>Stand Tall in your industry</h2>--}}
{{--                        <p>--}}
{{--                            Showcase your cars among the top list of car rental companies in--}}
{{--                            your city. Increase your brand recognition, forge partnerships--}}
{{--                            and reinforce your business.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-12">--}}
{{--                        <div class="blurry_row reveal fade_bottom">--}}
{{--                            <h2>Car Rental Advertising that goes a long way!</h2>--}}
{{--                            <p>Explore the OneTapDrive website and mobile apps</p>--}}
{{--                            <div class="icons_section">--}}
{{--                                <img src="{{asset('assets/images/huawei.webp')}}" alt=""/>--}}
{{--                                <img src="{{asset('assets/images/apple.webp')}}" alt=""/>--}}
{{--                                <img src="{{asset('assets/images/google.webp')}}" alt=""/>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </section>--}}
{{--        <section>--}}
{{--            <div class="content_wrap">--}}
{{--                <h2>Frequently Asked Questions</h2>--}}
{{--                <div class="collapse_wrap">--}}
{{--                    <div class="collapse_items">--}}
{{--                        <div id="faq-one" class="custom_collapse">--}}
{{--                            <button onclick="onOpenCollapse('faq-one')">--}}
{{--                                <span> Why is driving a BMW recommended in Dubai? </span>--}}
{{--                                <i id="faq-one-arrow" class="fa fa-angle-down"></i>--}}
{{--                            </button>--}}
{{--                            <div id="faq-one-content" class="collapse_content">--}}
{{--                                <p>--}}
{{--                                    Among the popular car choices, BMW is definitely a favorite.--}}
{{--                                    In Dubai, more so, as it’s perfect for Sheikh Zayed Road as--}}
{{--                                    well as on the highways stretching across the Emirates.--}}
{{--                                    Being one of the most scenic places for those seeking a--}}
{{--                                    luxurious adventure on wheels, BMWs are the most-in-demand--}}
{{--                                    cars in Dubai. You’ll be driving alongside exotic cars such--}}
{{--                                    as Porsche, Mercedes Benz, Audi, not to mention a range of--}}
{{--                                    sports cars.Many tourists and residents in Dubai rent a BMW--}}
{{--                                    to soak the pleasure of driving a luxurious sedan. The--}}
{{--                                    spacious cabin, extra legroom, advanced driving and safety--}}
{{--                                    features are what BMW vehicles are most known for.--}}
{{--                                </p>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="collapse_items">--}}
{{--                        <div id="faq-two" class="custom_collapse">--}}
{{--                            <button onclick="onOpenCollapse('faq-two')">--}}
{{--                <span>--}}
{{--                  Can I take the BMW rental car to Abu Dhabi from Dubai?--}}
{{--                </span>--}}
{{--                                <i id="faq-two-arrow" class="fa fa-angle-down"></i>--}}
{{--                            </button>--}}
{{--                            <div id="faq-two-content" class="collapse_content">--}}
{{--                                <p>--}}
{{--                                    Yes, you can! Most customers rent a luxury sedan in Dubai to--}}
{{--                                    visit Abu Dhabi and other emirates. It’s definitely the best--}}
{{--                                    way to explore the UAE. Car rental companies allow their--}}
{{--                                    vehicles to be driven anywhere in the UAE, barring a few--}}
{{--                                    locations such as Jebel Hafeet, Jebel Jais and desert areas.--}}
{{--                                    Be sure to plan your drives in advance to make the most of--}}
{{--                                    it. Google Maps is your best friend!If you’re planning a--}}
{{--                                    trip to the Grand Mosque, Louvre or Yas Marina, consider--}}
{{--                                    renting for 2 or more days to offset the additional mileage--}}
{{--                                    charge you will incur. As most car rentals, including luxury--}}
{{--                                    and sports cars, come with a standard mileage limit of--}}
{{--                                    250-km per day. Dubai to Abu Dhabi is a good 150-km away so--}}
{{--                                    you’ll probably be clocking over 300 km on the journey--}}
{{--                                    back.Best practice: Consult with the car rental agency--}}
{{--                                    regarding your trip plan for suggestions. Additional mileage--}}
{{--                                    packages may be available.--}}
{{--                                </p>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="collapse_items">--}}
{{--                        <div id="faq-three" class="custom_collapse">--}}
{{--                            <button onclick="onOpenCollapse('faq-three')">--}}
{{--                <span>--}}
{{--                  Which type of BMW cars are available for rent in Dubai?--}}
{{--                </span>--}}
{{--                                <i id="faq-three-arrow" class="fa fa-angle-down"></i>--}}
{{--                            </button>--}}
{{--                            <div id="faq-three-content" class="collapse_content">--}}
{{--                                <p>--}}
{{--                                    OneTapDrive.com works with several car rental companies--}}
{{--                                    across the world. In Dubai, we work with quite a few BMW car--}}
{{--                                    rental providers. You can choose among cars with a range of--}}
{{--                                    engine sizes and additional features, including GPS--}}
{{--                                    navigation, safety and performance enhancements. The BMW--}}
{{--                                    sedan comes in various 4-door sedan, convertible models with--}}
{{--                                    advanced features. Different models including: BMW 2-series,--}}
{{--                                    3-series, 550i, 550 mpower, 730li, 750li, X5, X6 and more.--}}
{{--                                    If you’re looking for a rare BMW car model, contact our--}}
{{--                                    suppliers who have listed a BMW. They might be able to cater--}}
{{--                                    to your distinguished needs.--}}
{{--                                </p>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </section>--}}
{{--        <section class="gallery">--}}
{{--            <div class="image">--}}
{{--                <img--}}
{{--                    src="https://www.oneclickdrive.com/uploads/Mercedes-Benz_C300_2020_21539_21539_14057395183-5_thumbnail.jpg?clr=20.1"--}}
{{--                    alt="image"--}}
{{--                />--}}
{{--            </div>--}}
{{--            <div class="image">--}}
{{--                <img--}}
{{--                    src="https://www.oneclickdrive.com/uploads/BMW_X5_2022_21535_21535_14018186598-1_thumbnail.jpg?clr=20.1"--}}
{{--                    alt="image"--}}
{{--                />--}}
{{--            </div>--}}
{{--            <div class="image">--}}
{{--                <img--}}
{{--                    src="https://www.oneclickdrive.com/uploads/Mercedes-Benz_C300_2020_21539_21539_14057395183-5_thumbnail.jpg?clr=20.1"--}}
{{--                    alt="image"--}}
{{--                />--}}
{{--            </div>--}}
{{--            <div class="image">--}}
{{--                <img--}}
{{--                    src="https://www.oneclickdrive.com/uploads/Kia_Picanto_2023_21562_21562_14038313608-1_thumbnail.jpg?clr=20.1"--}}
{{--                    alt="image"--}}
{{--                />--}}
{{--            </div>--}}
{{--            <!--<div class="image">-->--}}
{{--            <!--  <img-->--}}
{{--            <!--    src="https://www.oneclickdrive.com/uploads/Mercedes-Benz_GLB-250_2020_19052_19052_1402751479-1_thumbnail.jpg?clr=20.1"-->--}}
{{--            <!--    alt="image"-->--}}
{{--            <!--  />-->--}}
{{--            <!--</div>-->--}}
{{--            <div class="image">--}}
{{--                <img--}}
{{--                    src="https://www.oneclickdrive.com/uploads/Toyota_Camry_2023_21543_21543_14056368971-1_thumbnail.jpg?clr=20.1"--}}
{{--                    alt="image"--}}
{{--                />--}}
{{--            </div>--}}
{{--            <div class="image">--}}
{{--                <img--}}
{{--                    src="https://www.oneclickdrive.com/uploads/Land-Rover_Defender-X-V6_2022_20209_20209_14063449680-6_thumbnail.jpg?clr=20.1"--}}
{{--                    alt="image"--}}
{{--                />--}}
{{--            </div>--}}
{{--            <div class="image">--}}
{{--                <img--}}
{{--                    src="https://www.oneclickdrive.com/uploads/Land-Rover_Defender-X-V6_2022_20209_20209_14063449680-6_thumbnail.jpg?clr=20.1"--}}
{{--                    alt="image"--}}
{{--                />--}}
{{--            </div>--}}
{{--            <div class="image">--}}
{{--                <img--}}
{{--                    src="https://www.oneclickdrive.com/uploads/Cadillac_Escalade_2021_14794_14794_14032776561-10_thumbnail.jpg?clr=20.1"--}}
{{--                    alt="image"--}}
{{--                />--}}
{{--            </div>--}}
{{--            <div class="image">--}}
{{--                <img--}}
{{--                    src="https://www.oneclickdrive.com/uploads/Mercedes-Benz_AMG-G63-Double-Night-Package_2023_21547_21547_14052819732-1_thumbnail.jpg?clr=20.1"--}}
{{--                    alt="image"--}}
{{--                />--}}
{{--            </div>--}}
{{--        </section>--}}
{{--        <section class="bg_lime">--}}
{{--            <div class="content_wrap">--}}
{{--                <div class="section_heading">--}}
{{--                    <h1 class="reveal fade_bottom">--}}
{{--                        Grow Your Business with OneClickDrive--}}
{{--                    </h1>--}}
{{--                    <button class="styled_button animate_width">Get Started</button>--}}
{{--                </div>--}}
{{--                <div class="space_y">--}}
{{--                    <p class="reveal fade_bottom">--}}
{{--                        Automate your car rental marketing and start connecting with--}}
{{--                        active car rental seekers from across the globe.--}}
{{--                    </p>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </section>--}}
{{--    </div>--}}

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

    <script>
        var swiper3 = new Swiper(".banner_swiper", {
            grabCursor: true,
            effect: "creative",
            creativeEffect: {
                prev: {
                    shadow: true,
                    translate: ["-40%", 0, -1],
                },
                next: {
                    translate: ["100%", 0, 0],
                },
            },
            autoplay: {
                delay: 2500,
                disableOnInteraction: false,
            },
            speed: 1000, // Transition duration (in ms). 1000 ms is 1 second.
        });
    </script>
    <script>
        $("#registerCompany").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
                name: {
                    required: true
                },
                company_name: {
                    required: true
                },
                job_title: {
                    required: true,
                },
                fleet_size: {
                    required: true,
                },
                contact: {
                    required: true,
                },
                country: {
                    required: true,
                },
                city: {
                    required: true,
                },

                password: {
                    required: true,
                    minlength: 6
                },
                confirm_password: {
                    required: true,
                    equalTo: "#password"
                },
                company_logo: {
                    required: true,
                },
                company_license: {
                    required: true,
                },

            },
            messages: {
                name: {
                    required: 'Your name is  required.'
                },
                company_name: {
                    required: 'Company name is  required.'
                },
                email: {
                    required: 'Email is required.'
                },
                job_title: {
                    required: 'Job title is  required.'
                },
                fleet_size: {
                    required: 'Fleet size is  required.'
                },
                contact: {
                    required: 'Contact is  required.'
                },
                country: {
                    required: 'Country is  required.'
                },
                city: {
                    required: 'City is  required.'
                },
                password: {
                    required: 'Password is required.',
                    minlength: 'Password must be at least 6 characters long.'
                },
                confirm_password: {
                    required: 'Please confirm your password.',
                    equalTo: 'Passwords do not match.'
                },
                company_logo: {
                    required: 'Company Logo  is  required.'
                },
                company_license: {
                    required: 'Company License  is  required.'
                },

            },

            submitHandler: function (form, e) {
                e.preventDefault();
                var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                let formData = new FormData(document.getElementById('registerCompany'));
                $.ajax({
                    url: "{{ route('register-company') }}",
                    type: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    beforeSend: function () {
                        $("#preloaderSmall").removeClass('loader-active');
                    },
                    success: function (response, data) {
                        $("#preloaderSmall").addClass('loader-active');
                        $.each(response.errors, function (prefix, val) {
                            toastr.error(val[0]);
                        });
                        if (response.status == 503) {
                            toastr.error(response.message)
                            return false;
                        }
                        // if(response.status ==  400){

                        // }
                        if (response.status == 502) {
                            toastr.error('Invalid OTP !');
                        }
                        if (response.status == 200) {
                            swal({
                                title: "Company Registration!",
                                text: response.message,
                                type: "success",
                                icon: "success",
                            }).then(function () {
                            });

                            $('#registerCompany')[0].reset();
                        }
                    }
                });
            }
        });


    </script>
@endsection
