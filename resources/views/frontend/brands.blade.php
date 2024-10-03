@extends('frontend.layouts.header')
@section('title','Rent a Car Dubai | Brands')
@section('content')
<div class="brands_wrapper">
    <div class="container">
      <nav>
        <ol class="cd-breadcrumb">
          <li><a href="/" class="fa fa-home"></a></li>
          <li><a href="#0">Cars for rent</a></li>
          <li><a href="#0">UAE</a></li>
          <li class="current"><em>By brand / by Vehicle type</em></li>
        </ol>
      </nav>
    </div>

    <section>
      <div class="container">
        <h1>Browse <span class="clr_primary">rental cars</span> by brand</h1>
        <h2>2214 cars from 47 auto brands available for hire in Dubai</h2>
        <p>
          If you’re looking to drive a car model of a specific auto brand in
          the UAE, you’ve come to the right place. OneClickDrive.com hosts the
          largest selection of cars for rent in the UAE. Listed below are cars
          available for hire by every auto brand. Be it cars by Ferrari,
          Lamborghini, Rolls Royce, Hyundai, Toyota, Honda, Kia and so on.
        </p>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row">
            @foreach ( $brands as  $brand)

          <a href="{{ route('rent', ['slug' => $brand->slug]) }}" class="col-lg-3 styled_brand">
            <div class="brand mt-3">
              <img
                src="{{asset('brands/'.$brand->brand_image)}}"
                alt=""
              />
              <h2>{{$brand->brand_name ?? ''}}</h2>
              <code>{{$brand->brand_models ?? ''}}</code>
              <p class="clr_primary">2 rental offers</p>
            </div>
          </a>
          {{-- <a href="/" class="col-lg-3 styled_brand">
            <div class="brand">
              <img
                src="https://www.oneclickdrive.com/application/views/img/brands_png/Alfa-Romeo-02.png?ve=4.3"
                alt=""
              />
              <h2>alfa romeo</h2>
              <code>Giulietta Stelvio</code>
              <p class="clr_primary">2 rental offers</p>
            </div>
          </a>
          <a href="/" class="col-lg-3 styled_brand">
            <div class="brand">
              <img
                src="https://www.oneclickdrive.com/application/views/img/brands_png/Alfa-Romeo-02.png?ve=4.3"
                alt=""
              />
              <h2>alfa romeo</h2>
              <code>Giulietta Stelvio</code>
              <p class="clr_primary">2 rental offers</p>
            </div>
          </a>
          <a href="/" class="col-lg-3 styled_brand">
            <div class="brand">
              <img
                src="https://www.oneclickdrive.com/application/views/img/brands_png/Alfa-Romeo-02.png?ve=4.3"
                alt=""
              />
              <h2>alfa romeo</h2>
              <code>Giulietta Stelvio</code>
              <p class="clr_primary">2 rental offers</p>
            </div>
          </a> --}}
          @endforeach

        </div>

      </div>
    </section>

    <section>
      <div class="container">
        <h2>Why people prefer to rent by brand</h2>
        <p>
          Renting a car is a safe and secure way to travel, giving you your
          own personal vehicle in which you can travel in comfort. But when
          you think about renting a car, do you tend to rent a car from a
          company or brand you’ve never used before, or among the ones you’re
          familiar with?
        </p>
        <h2>Sense of Familiarity</h2>
        <p>
          Most people these days are opting to rent cars that they have a
          sense of familiarity with, as cars of the same company may have
          different driving dynamics, but ultimately share the same
          infotainment system, and other amenities, such as climate controls
          or seat and steering wheel adjustments.
        </p>
        <p>
          The brand design makes people more comfortable in the car. Adding to
          this, different brands are known to have different specialties. For
          example, Rolls Royce is known to make some of the most comfortable,
          luxurious cars in the world, whereas Toyota is known to make some of
          the strongest, most reliable vehicles, as well as a plethora of
          economy vehicles.
        </p>

        <h2>Renting your favorite brand</h2>
        <p>
          This is why renting by brand is becoming more popular, as it tends
          to simplify the process of choosing which car to rent. Given most
          cars available for rent include popular models from world-class
          automotive brands, car rentals .
        </p>
        <p>
          People frequently travel for work and leisure, and they need a car
          during trips abroad. Adding to this, many people may not want the
          hassle of owning and maintaining a car, hence, they opt to rent
          cars.
        </p>

        <p>
          You can find cars of all ranges that you can enjoy using all over
          the UAE. Find your future rental car at
          <a href="/" class="clr_primary" href="/">WheelsOnClick.com</a>
          today!
        </p>

        <h2>Most Popular Car Brands</h2>

        <p>
          Are you planning to buy a car? Why not rent first? Test drive it
          yourself for as long as you like - just to be sure. Hire a car for a
          few days or a week. You’re sure to find every popular car brand for
          rent in the UAE on this page. Get it right this time!
        </p>

        <p>
          If you’re planning a trip to the UAE for work, visit, or to settle
          for good, you’re sure to need a car. It’s as good as any other basic
          necessity of life in the middle east. The sweltering summers aren’t
          amicable and places are often hard or slow to reach by public
          transport.
        </p>
        <p>Some of the most popular auto-motor brands in the UAE include:</p>

        <h2>Toyota (Al Futtaim Motors)</h2>
        <p>
          Toyota is one of the most preferred brands in the UAE. It’s favored
          for the Land Cruiser and Corolla. The Japanese brand’s rugged SUV
          commands the fast lane and is a favourite among locals. Its
          desert-friendly Land Cruiser and smaller Prado proved most revered.
          Alongside the Corolla sedan with all-around dark tinted windows is
          commonplace on UAE roads. Toyota Camry is sadly overpopulated by RTA
          taxis in the emirates.
        </p>
        <p>
          Every new Toyota model sells like hot cakes, especially during the
          Ramadan season sale. With incremental functional and comfort
          upgrades, Toyota cars are regarded among the safest in the UAE.
          Toyota is hence one of the most fast-moving cars on the rental rack.
          They are much preferred by local Emirates as well as Saudi and Oman
          nationals visiting Dubai and Abu Dhabi.
        </p>

        <h2>Nissan (Arabian Automobiles / AW Rostamani)</h2>
        <p>
          SUVs have been the preferred choice of car type thanks to UAE’s
          ancient desert life. Nissan made it big in the UAE with its flagship
          SUV: The Nissan Batrol [sic]. Though the country has evolved to
          offering modern city life, Patrol has stuck its ground. It’s one of
          the most demanded rental cars in Dubai, Abu Dhabi and Sharjah. In
          fact, it’s booked weeks before an upcoming Eid holiday through till
          the weekend.
        </p>
        <p>
          The Nissan Patrol SUV is adored for its powerful engine and massive
          size. If you happen to drive on the fast lane of Sheikh Zayed Road,
          Mohammed Bin Zayed, Emirates Road or any other highway in the UAE,
          you’ll probably be tailgated by a flashing Batrol. No matter if you
          were driving the maximum allowed speed limit.
        </p>
        <h2>Mercedes Benz (Gargash Motors)</h2>
        <p>
          In Dubai, Mercedes Benz S-class is a symbol of status like anywhere
          else. Higher the model no., the higher your societal status. It’s
          easy to spot one in Dubai and Abu Dhabi. Be it a personal car, a
          rental or a chauffeured limousine. The German automaker’s new models
          are much in demand across the UAE, including the Maybachs.
        </p>
        <p>
          The other popular car by Mercedes Benz is the G63 wagon. The luxury
          SUV is in high demand all round the year. In the Dubai rental
          market, the G63 is available all through 2016 to 2019. It comes with
          some of the most amazing car features alongside a powerful engine.
          It’s been an iconic car since Sheikh Mohammed was seen driving
          around Dubai his very own “1” G-wagon in this BBC interview.
        </p>
        <h2>Lexus (Al Futtaim Motors)</h2>
        <p>
          As much as the Emirates love their SUVs, Lexus is top at its game
          with the LX 570. It comes with power, luxury and safety features
          that Lexus is well-known for. This all-wheel-drive (AWD) car has
          responsive brakes and a high-tech cabin.
        </p>
        <p>
          Given the smooth ride and advanced off-road capabilities, the Lexus
          LX 570 is in high demand for rentals too. Though you’re not allowed
          to take a rental car off-roading as insurance does not cover it.
          Another high-selling car by Lexus is the ES 350, the standard
          limousine car in the UAE. You’ll seem in white, black and silver
          color throughout the city of Dubai being chauffeured by professional
          drivers. It offers amazing legroom and elegant interiors for you and
          your guests.
        </p>
        <h2>Hyundai (Juma Al Majid Group)</h2>
        <p>
          Hyundai is world-renowned and highly respected. The Korean
          automotive producer offers a range of dependable economy and
          medium-range vehicles. From SUVs like Santa Fe, Tucson to sedans
          such as Accent, Elantra and even the H1 van. Every successive model
          has been a hit year after year.
        </p>
        <p>
          Car rental companies that cater Hyundai cars receive quite a few
          inquiries, even though the availability is high in the market. Most
          customers prefer Hyundai cars given the brand’s likability by both
          men and women.
        </p>
        <p>
          The five auto brands Described above are those which we believe are
          the most popular in the UAE. Please feel free to rent across all the
          brands labeled above through the UAE’s biggest car rental and
          leasing portal.
        </p>
      </div>
    </section>
  </div>
@endsection
