@extends('layouts.main')
@section('title', 'Contact Us')
@section('content')

    <section class="breadcrumbs-area breadcrumb-bg">
        <div class="container">
            <h1 class="title wow fadeInUp" data-wow-delay="0.0s">Contact Us</h1>
            <div class="breadcrumb-text">
                <nav aria-label="breadcrumb" class="breadcrumb-nav wow fadeInUp" data-wow-delay="0.1s">
                    <ul class="breadcrumb listing">
                        <li class="breadcrumb-item single-list"><a href="{{ route('home') }}" class="single">Home</a></li>
                        <li class="breadcrumb-item single-list" aria-current="page"><a href="javascript:void(0)"
                                class="single active">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>

    <section class="contact-area section-padding2">
        <div class="position-relative contact-bg-before">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-9">
                        <div class="contact-card">
                            <h4 class="contact-heading">Feel Free to Write us Anytime</h4>

                            <form id="create-form" class="contact-form" method="post" action="{{ route('contact.store') }}"
                                autocomplete="off" id="create-form">
                                @csrf

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form_item wow fadeInUp2 mb-3" data-wow-delay=".1s">
                                            <span class="input_title" style="color: black;">Full Name</span>
                                            <div class="position-relative">
                                                <input id="input_user" type="text" name="name"
                                                    placeholder="Write Your Name" class="custom-form">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form_item wow fadeInUp2 mb-3" data-wow-delay=".2s">
                                            <span class="input_title" style="color: black;">Email Address</span>
                                            <div class="position-relative">
                                                <input id="input_email" type="email" name="email"
                                                    placeholder="Write Your Email" class="custom-form">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form_item wow fadeInUp2 mb-3" data-wow-delay=".2s">
                                            <span class="input_title" style="color: black;">Subject</span>
                                            <div class="position-relative">
                                                <input id="input_email" type="text" name="subject"
                                                    placeholder="Write Your Subject" class="custom-form">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form_item wow fadeInUp2 mb-3" data-wow-delay=".3s">
                                            <span class="input_title" style="color: black;">Phone Number</span>
                                            <div class="position-relative">
                                                <input id="input_phone" type="tel" name="phone"
                                                    placeholder=" Your Phone Number" class="custom-form">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form_item wow fadeInUp2 mb-3" data-wow-delay=".4s">
                                            <span class="input_title" style="color: black;">Leave A Message</span>
                                            <textarea name="message" placeholder="Write Your Message" class="custom-form"></textarea>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <button type="submit" class="send-btn">Send Message</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreContact', '#create-form') !!}
@endsection