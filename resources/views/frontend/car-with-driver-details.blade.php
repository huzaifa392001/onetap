@extends('frontend.layouts.header')
@section('title', 'Book Dubai Airport Transfer with' . ' ' . $car_details->brand_name . ' ' . $car_details->model_name)
@section('content')

    <style>
        .text_gold {
            color: #FFBA00 !important;
        }

        .bg_gold {
            background-color: #FFBA00 !important;
        }

        .border_gold {
            border: 1px solid #FFBA00;
        }

        .bg_grey {
            background-color: #4D4D4D;
        }

        .bg_green {
            background-color: #7CC67C;
        }

        .icon {
            height: 50px;
            width: 50px;
        }

        .icon:hover {
            cursor: pointer;
        }

        .h_3 {
            font-size: 24px;
            font-weight: bold;
        }

        .styled_button {
            background-color: #FFBA00;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s, box-shadow 0.3s;
        }

        .styled_button:hover {
            background-color: #e0a700;
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }

        .carousel-indicators button {
            background-color: #FFBA00;
        }

        .carousel-indicators .active {
            background-color: #e0a700;
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            background-color: #FFBA00;
            border-radius: 50%;
        }

        .car_details_wrapper {
            margin-top: 50px;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .bg_grey {
            background-color: #4D4D4D;
            color: #fff;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .border_gold {
            border: 1px solid #FFBA00;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background: white;
        }

        .detail_area img {
            border-radius: 10px;
        }

        .swiper-slide img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .swiper-button-next,
        .swiper-button-prev {
            color: #FFBA00;
        }

        .content_wrap {
            padding: 20px;
        }

        .text_light {
            color: #fff;
        }

        .primary {
            background-color: #FFBA00;
            color: #fff;
        }

        .styled_button.primary {
            background-color: #FFBA00;
            color: #fff;
        }
    </style>

    <div class="car_details_wrapper container">
        <div class="text-center mt-5">
            <h2 class="text_gold h_3">Book a {{ $car_details->brand_name }} {{ $car_details->model_name }}
                {{ $car_details->make_year }} in {{ $car_details->city }} for Airport Transfer</h2>
            <p>Book a professional airport transfer service (private taxi) to and from Dubai Airport. All-inclusive,
                pre-paid booking to provide an exceptional experience for you and your guests. Book among a range of luxury
                and spacious sedans, SUVs, and vans including the latest King Long 54 Seater. Our chauffeurs are
                well-trained, uniformed, and always punctual. They’ll assist you or your guests with their luggage at the
                airport and escort them to the car with meet and greet service for arrivals.
            </p>
        </div>
        <section>
            <div class="content_wrap">
                <div class="row">
                    <div class="col-md-4">
                        <div class="bg_grey px-3 py-4">
                            <h3 class="text_gold h_3">{{ $car_details->brand_name }} {{ $car_details->model_name }}
                                {{ $car_details->make_year }}</h3>
                            <p style="color:white">{{ $car_details->category_type }} {{ $car_details->vehicle_type }}</p>
                            <span>Passengers: {{ $car_details->passengers }}</span><br>
                            <span>Bags: {{ $car_details->luggage }}</span>
                        </div>
                        <div class="border_gold px-3 py-4">
                            <h3 class="h_3">DXB Transfer within {{ $car_details->transfer_city_name }}</h3>
                            <p class="mb-1">AED <span
                                    class="text_gold h3">&nbsp;{{ $car_details->transfer_city_charges }}</span></p>
                            <button class="styled_button primary mt-3 sendEnquiry" data-bs-toggle="modal"
                                data-bs-target="#bookNowModal" data-id="{{$car_details->id }}">Book now</button>
                        </div>
                        <div class="border_gold px-3 py-4">
                            <h3 class="h_3">DXB Airport Transfer to/from {{ $car_details->from_city }} City</h3>
                            <p class="mb-1">AED <span
                                    class="text_gold h3">&nbsp;{{ $car_details->from_city_to_city_charges }}</span></p>
                            <button class="styled_button primary mt-3 sendEnquiry" data-bs-toggle="modal"
                                data-bs-target="#bookNowModal" data-id="{{$car_details->id }}">Book now</button>
                        </div>
                        <div class="border_gold px-3 py-4">
                            <h3 class="h_3">DXB Airport Transfer to/from Ajman City</h3>
                            <p class="mb-1">AED <span class="text_gold h3">&nbsp;1485</span></p>
                            <button class="styled_button primary mt-3 sendEnquiry" data-bs-toggle="modal"
                                data-bs-target="#bookNowModal" data-id="{{$car_details->id }}">Book now</button>
                        </div>
                    </div>
                    <div class="col-lg-8 detail_area">
                        <div class="row">
                            <div class="col-lg-12 car_details_carousel pt-0">
                                <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
                                    class="swiper mySwiper2">
                                    <div class="swiper-wrapper">
                                        @foreach (json_decode($car_details->images) as $image)
                                            <div class="swiper-slide">
                                                <img src="{{ asset('images/') }}/{{ $image }}" alt="Car Image" />
                                            </div>
                                        @endforeach
                                    </div>
                                    <div class="swiper-button-next"></div>
                                    <div class="swiper-button-prev"></div>
                                </div>

                                <div thumbsSlider="" class="swiper mySwiper">
                                    <div class="swiper-wrapper">
                                        @foreach (json_decode($car_details->images) as $image)
                                            <div class="swiper-slide">
                                                <img src="{{ asset('images/') }}/{{ $image }}" alt="Car Image" />
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="d-flex justify-content-center gap-2">
                                <i
                                    class="icon fa-solid fa-phone bg_gold text-light h5 rounded-circle d-flex align-items-center justify-content-center"></i>
                                <i
                                    class="icon fab fa-whatsapp text-light bg_green h5 rounded-circle d-flex align-items-center justify-content-center"></i>
                                <i
                                    class="icon fa-solid fa-envelope text-light bg_grey h5 rounded-circle d-flex align-items-center justify-content-center"></i>
                            </div>
                            <a href="{{ route('car-with-driver', 'Chauffeur Service') }}"><button
                                    class="styled_button primary mt-3 d-block mx-auto">Switch to Chauffeur
                                    Service</button></a>
                        </div>
                    </div>
                </div>

                <div class="row mt-5">
                    <div class="col-md-12">
                        <div>
                            {!! $car_details->description !!}
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="content_wrap">
            <p><strong class="clr_primary">Note: </strong>The listing above (including its pricing, features, and other
                details) is advertised by Al Emad Rent a Car. Please contact the supplier directly on the listed phone
                number, WhatsApp no. or send an inquiry to rent this car...</p>
        </div>
    </div>


    {{-- Modal --}}

    <!-- Modal -->
    <div class="modal fade" id="bookNowModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text_gold" id="exampleModalLabel">JOURNEY DETAILS</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
             <form id="sendCarEnquiry" method="POST">
                 @csrf
                 <input type="hidden" value="{{$car_details->id}}" name="car_id">
                 <input type="hidden" value="{{$car_details->user_id}}" name="vendor_id">
                <div class="modal-body">
                        
                    <div class="mt-2">
                        <label for="pick_up_date">Name</label><br>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="mt-2">
                        <label for="pick_up_date">Contact</label><br>
                        <input type="text" class="form-control" id="contact" name="contact">
                    </div>
                    <div>
                        <label for="pick_up_location">Pick-up location</label><br>
                         <input type="text" name="pickup_location" class="form-control" id="pickup_location">
                    </div>
                    <div class="mt-2">
                        <label for="drop_off_location">Drop off location</label><br>
                        <input type="text" name="dropoff_location" class="form-control" id="dropoff_location">
                    </div>
                    <div class="mt-2">
                        <label for="pick_up_date">Pick-up Date</label><br>
                        <input type="date" name="pickup_date" class="form-control" id="pickup_date">
                    </div>
                    <div class="mt-2">
                        <label for="pick_up_time">Pick-up Time</label><br>
                        <input type="time" name="pickup_time" class="form-control" id="pickup_time">
                    </div>

                    <div class="mt-3">
                        <input type="checkbox" id="return_journey" value="journey">
                        <label for="return_journey">Return Journey?</label>
                    </div>

                    <div class="d-none" id="returnJourneyDiv">
                        <div class="mt-2">
                            <label for="return_date">Return Date</label><br>
                            <input type="date" name="return_date" class="form-control" id="return_date">
                        </div>
                        <div class="mt-2">
                            <label for="return_time">Return Time</label><br>
                            <input type="time" name="return_time" class="form-control" id="return_time">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
                </form>
            </div>
        </div>
    </div>

    
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- include the JavaScript file for Owl Carousel -->
    <script src="https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>


    <script>
        var swiper = new Swiper(".mySwiper", {
            spaceBetween: 10,
            slidesPerView: 4,
            freeMode: true,
            watchSlidesProgress: true,
        });

        var swiper2 = new Swiper(".mySwiper2", {
            spaceBetween: 10,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            thumbs: {
                swiper: swiper,
            },
        });

        // return journey


        let return_journey = document.getElementById('return_journey')
        let returnJourneyDiv = document.getElementById('returnJourneyDiv')
        
        return_journey.addEventListener('change', function(event) {
            if(event.target.checked === true){
                returnJourneyDiv.classList.remove('d-none')
            }
            else{
                returnJourneyDiv.classList.add('d-none')
            }
        });
    </script>
    



  <script>
    $("#sendCarEnquiry").validate({
           rules: {
               name: {
                   required: true,
                   maxlength:50
                   
               },
               contact: {
                   required: true,
                   maxlength:20
               },
               pickup_location: {
                   required: true
               },
               dropoff_location: {
                   required: true
               },
               pickup_date: {
                   required: true
               },
               pickup_time: {
                   required: true
               },
               

           },
           messages:{
               name:{
                   required: 'Name field is required'
               },
               contact:{
                   required: 'Contact field is required'
               },
               pickup_location:{
                   required: 'Pickup Location  field is required'
               },
               dropoff_location:{
                   required: 'Dropoff Location field is required'
               },
               pickup_date:{
                   required: 'Pickup Date field is required'
               },
               pickup_time:{
                   required: 'Pickup Time field is required'
               },
               
           },

           submitHandler: function(form, e) {
               
                   e.preventDefault();
                   var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                   var form= $("#sendCarEnquiry");
                   // var name = $("#name").val();
                   $.ajax({
                       type: 'POST',
                       url: "{{route('send-enquiry')}}",
                       data: form.serialize(),
                       dataType: 'JSON',
                       /* remind that 'data' is the response of the AjaxController */
                       success: function (response,data) {
                           if (response.status == 200) {
                               swal({
                               title: "Enquiry!",
                               text: response.message,
                               type: "success",
                               icon: "success",
                           }).then(function() {});
                           $('#sendCarEnquiry')[0].reset();
                           }

                       if(response.status ==  400){
                           $.each(response.errors, function(prefix, val){
                               toastr.error(val[0]);
                           });
                       }
                      
                       }
                   });
               
           }   
       });
   
</script>

@endsection
