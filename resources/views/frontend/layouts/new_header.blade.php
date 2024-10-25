<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        @media (max-width: 991.98px) {
            .desktopMenu, .heroSec, .searchBar.desktop, .testiSec, .docSec {
                display: none;
            }
        }
    </style>
    @if (isset($details))
        <meta property="og:title"
              content="{{ $details->get_brand_name->brand_name ?? '' }} {{ $details->model_name ?? '' }} {{ $details->make_year ?? '' }}">
        <meta property="og:description" content="Your Description Here">
        <meta property="og:image" content="{{ asset('images/') }}/{{ $details->get_images[0]->images }}">
        <meta property="og:image:width" content="1200"/>
        <meta property="og:image:height" content="630"/>
    @endif
    <link style="width: 100%" rel="icon" href="{{asset('web-assets/images/fav.webp')}}" type="image/png">
    <link rel="stylesheet" href="{{asset("web-assets/css/plugins.css")}}">
    <link rel="stylesheet" href="{{asset("web-assets/css/custom.css")}}">
    <link rel="stylesheet" href="{{asset("web-assets/css/responsive.css")}}">
    @yield('style')
    <title>@yield('title')</title>
</head>
<body>

@include('frontend.layouts.menu')
@yield('content')
@include("frontend.layouts.footer")

{{-- Login Modal --}}

<!-- Modal -->
<div class="modal fade loginModal" id="login" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title" id="staticBackdropLabel">
                    Sign up / Login to OneTapDrive
                </h2>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-5">
                            <img class="popupImg img-fluid" src={{ asset('assets/images/login-img.webp') }}
                                alt="">
                            <p>
                                Ease your car rental search across the world Access exclusive features with a free
                                account View saved cars, contacted listings and more
                            </p>
                        </div>
                        <div class="col-md-7">
                            <div class="btnCont">
                                <a href="#" class="themeBtn facebookBtn">
                                    <i class="fab fa-facebook-f"></i>
                                    <span>
                                        Sign in with Facebook
                                    </span>
                                </a>
                                <a href="{{ Route('login.google-redirect') }}" class="themeBtn google">
                                    <i class="fab fa-google"></i>
                                    <span>
                                        Sign in with Google
                                    </span>
                                </a>
                            </div>
                            <div class="divider">
                                <span>OR</span>
                            </div>
                            <form id="emailOtp">
                                @csrf
                                <div class="inputCont">
                                    <input placeholder="Email" id="email" name="email" type="email" required>
                                </div>
                                <div class="inputCont">
                                    <button class="themeBtn">Send OTP</button>
                                </div>
                            </form>
                            <p>
                                By continuing, you agree to our
                                <a href="">Terms Of Service</a>
                                and
                                <a href="">Privacy Policy</a>.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- OTP Modal --}}
<div class="modal fade loginModal" id="otp" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title" id="staticBackdropLabel">
                    Sign up / Login to OneTapDrive
                </h2>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" id="otpModal">
                <div class="container-fluid">
                    <div class="row otp_modal">
                        <div class="col-md-5">
                            <img class="popupImg img-fluid" src={{ asset('assets/images/login-img.webp') }}
                                alt="">
                            <p>
                                Ease your car rental search across the world Access exclusive features with a free
                                account View saved cars, contacted listings and more
                            </p>
                        </div>
                        <div class="col-md-6">
                            <div class="otpDetailCont">
                                <h4>Verification Code</h4>
                                <p>An OTP is sent to your email</p>
                                <a href="" id="otpemail"></a>
                                <h5 class="mt-4">ENTER 4 DIGIT OTP</h5>
                                <form id="verifyOtp">
                                    @csrf
                                    <div class="inputCont otpCont">
                                        <input type="text" class="otp-input" name="otp_code[]" pattern="\d"
                                               maxlength="1">
                                        <input type="text" class="otp-input" name="otp_code[]" pattern="\d"
                                               maxlength="1" disabled>
                                        <input type="text" class="otp-input" name="otp_code[]" pattern="\d"
                                               maxlength="1" disabled>
                                        <input type="text" class="otp-input" name="otp_code[]" pattern="\d"
                                               maxlength="1" disabled>
                                    </div>
                                    <div class="inputCont">

                                        <button class="themeBtn" role="button">
                                            Verify
                                        </button>
                                    </div>
                                    <input type="hidden" id="verificationCode">
                                    <input type="hidden" id="emailverificationCode">
                                </form>
                                <div class="smallText">
                                    <p>
                                        Haven't received it yet?
                                        <a href="#" target="_blank">Resend</a>
                                    </p>
                                    <p>
                                        In case you don't find our email in your inbox, please check your Spam folder.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="{{asset('web-assets/js/plugins.js')}}"></script>
<script type="text/javascript" src="{{asset('web-assets/js/index.js')}}"></script>
@yield('script')

<script type="text/javascript">
</script>
<script type="text/javascript">
    @if ($errors->any())
    @foreach ($errors->all() as $error)
    toastr.error('{{ $error }}');
    @endforeach
    @endif
    @if (Session::has('message'))
    var type = "{{ Session::get('alert-type', 'info') }}"
    switch (type) {
        case 'info':
            toastr.info(" {{ Session::get('message') }} ");
            break;
        case 'success':
            toastr.success(" {{ Session::get('message') }} ");
            break;
        case 'warning':
            toastr.warning(" {{ Session::get('message') }} ");
            break;
        case 'error':
            toastr.error(" {{ Session::get('message') }} ");
            break;
    }
    @endif
</script>
<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function () {
        var otpInputs = document.querySelectorAll(".otp-input");

        function setupOtpInputListeners(inputs) {
            inputs.forEach(function (input, index) {
                input.addEventListener("input", function () {
                    var currentIndex = Array.from(inputs).indexOf(this);
                    var inputValue = this.value.trim();

                    if (!/^\d$/.test(inputValue)) {
                        this.value = "";
                        return;
                    }

                    if (inputValue && currentIndex < 3) {
                        inputs[currentIndex + 1].removeAttribute("disabled");
                        inputs[currentIndex + 1].focus();
                    }

                    updateOTPValue(inputs);
                });

                input.addEventListener("keydown", function (ev) {
                    var currentIndex = Array.from(inputs).indexOf(this);

                    if (!this.value && ev.key === "Backspace" && currentIndex > 0) {
                        inputs[currentIndex - 1].focus();
                    }
                });
            });
        }

        function updateOTPValue(inputs) {
            var otpValue = "";

            inputs.forEach(function (input) {
                otpValue += input.value;
            });

            document.getElementById("verificationCode").value = otpValue;
            document.getElementById("emailverificationCode").value = otpValue;
        }

        setupOtpInputListeners(otpInputs);

        otpInputs[0].focus(); // Set focus on the first OTP input field
        $('#emailOtp').on('submit', function (e) {
            e.preventDefault();
            var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
            var form = $("#emailOtp");
            var email = $("#email").val();
            $.ajax({
                type: "POST",
                url: '{{ route('email-otp') }}',
                data: form.serialize(),
                success: function (response) {
                    console.log("response=> ", response);
                    $('#otpemail').val('');
                    if (response.status == 200) {
                        $('#otp').modal('show');
                        $('#login').modal('hide');
                        $('#otpemail').text(email);
                        toastr.success('OTP sent on email!');
                    } else {
                        toastr.error('Failed to send OTP. Please try again!');
                    }
                },
                error: function (xhr, status, error, response) {
                    console.log("xhr=> ", xhr);
                    console.error("Error=>", error);
                    toastr.error('An error occurred! Please try again later.');
                }
            });
        });

        $('#verifyOtp').on('submit', function (e) {
            e.preventDefault();
            var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
            var form = $("#verifyOtp");
            $.ajax({
                type: "POST",
                url: '{{ route('email-verify') }}',
                data: form.serialize(),
                success: function (response, data) {
                    if (response.status == 200) {
                        toastr.success('Otp verified successfully !');
                        window.location.href = "{{ route('my-profile') }}"
                    }
                    if (response.status == 502) {
                        toastr.error('Incorrect OTP code  !');
                    }
                }
            })
        });
    });
</script>
</body>
</html>
