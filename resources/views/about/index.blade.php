@extends('layouts.main')
@section('title', 'About Us')
@section('content')

    <section class="breadcrumbs-area breadcrumb-bg">
        <div class="container">
            <h1 class="title wow fadeInUp" data-wow-delay="0.0s">About Us</h1>
            <div class="breadcrumb-text">
                <nav aria-label="breadcrumb" class="breadcrumb-nav wow fadeInUp" data-wow-delay="0.1s">
                    <ul class="breadcrumb listing">
                        <li class="breadcrumb-item single-list"><a href="{{ route('home') }}" class="single">Home</a></li>
                        <li class="breadcrumb-item single-list" aria-current="page">
                            <a href="javascript:void(0)" class="single active">About Us</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>


    <section class="about-area">
        <div class="container">
            <div class="row g-4">
                <div class="col-xl-6 col-lg-6">
                    <div class="section-title  mb-30 w-md-100" style="max-width: 90%;">
                        <span class="highlights fancy-font font-400">About Us</span>
                        <h4 class="title">
                            Get The Best Travel Experience With AK Bate Thar Travel & Tours
                        </h4>
                        <p class="pera" style="text-align: justify">
                            Our travel company, AK Bate Thar Travel & Tours, is one of the best travel organizer in Myanmar,
                            which is providing the Tour Packages ( Inbound & Outbound ) to the world. We are fully licensed
                            Travel agent for Inbound and Outbound Tour, under the Ministry of Hotel and Tourism in Myanmar.
                            We have strong business relationships with hotels, airlines, restaurants and other travel
                            partners at home and abroad.
                        </p>

                        <p class="pera" style="text-align: justify">
                            Composed of a team of dedicated and professionally trained all staffs with many years of
                            experience in Tourism Industry. We are sure to inform you that free and easy ( or ) the tour
                            packages what you wants, we can do for your tour. Heading to success in the travel industry, our
                            long term plan is to carry on expanding over the next few years. We would like to continue
                            develop our team further and get some new staff working with us, helping to give our clients the
                            best holidays possible.
                        </p>
                    </div>
                </div>

                <div class="col-xl-6 col-lg-6">
                    <div class="about-count-section about-count-before-bg">
                        <div class="banner">
                            <img src="{{ asset('data/about.jpg') }}" alt="travello">
                        </div>
                        <div class="all-count-list">
                            <div class="details">
                                <h4 class="count">150k</h4>
                                <p class="pera">Happy Traveler</p>
                            </div>
                            <div class="divider"></div>
                            <div class="details">
                                <h4 class="count">95.7%</h4>
                                <p class="pera">Satisfaction Rate</p>
                            </div>
                            <div class="divider"></div>
                            <div class="details">
                                <h4 class="count">5000+</h4>
                                <p class="pera">Tour Completed</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="destination-area destination-bg-before">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-7">
                    <div class="section-title text-center mx-430 mx-auto position-relative">
                        <span class="highlights">
                            Gallery
                        </span>
                        <h4 class="title">
                            Explore The Beautiful Places Around World
                        </h4>
                    </div>
                </div>
            </div>
            <div class="row g-4">

                <div class="col-xl-4 col-lg-4 col-md-4">
                    <a href="javascript::void(0)" class="destination-banner">
                        <img src="{{ asset('data/1.jpg') }}" alt="travello"
                            style="width: 100%; height: 300px; background-size: top; object-fit: cover;">
                    </a>
                </div>

                <div class="col-xl-4 col-lg-4 col-md-4">
                    <a href="javascript::void(0)" class="destination-banner">
                        <img src="{{ asset('data/2.jpg') }}" alt="travello"
                            style="width: 100%; height: 300px; background-size: top; object-fit: cover;">
                    </a>
                </div>

                <div class="col-xl-4 col-lg-4 col-md-4">
                    <a href="javascript::void(0)" class="destination-banner">
                        <img src="{{ asset('data/3.jpg') }}" alt="travello"
                            style="width: 100%; height: 300px; background-size: top; object-fit: cover;">
                    </a>
                </div>

            </div>
        </div>

        <div class="shape">
            <img src="{{ asset('assets/images/icon/shape.png') }}" alt="travello">
        </div>
    </section>

    <br><br>

    <section class="special-area bottom-padding1">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-7">
                    <div class="section-title mx-430 mx-auto text-center">
                        <span class="highlights fancy-font font-400">
                            AK Bate Thar Travel & Tours
                        </span>
                        <h4 class="title">
                            Our Vision & Mission
                        </h4>
                    </div>
                </div>
            </div>
            <div class="row g-4">
                <div class="col-lg-6 col-md-6">
                    <a href="javascript::void(0)" class="offer-banner imgEffect4 wow fadeInLeft" data-wow-delay="0.0s">
                        <img src="{{ asset('assets/images/gallery/offercard-1.jpg') }}" alt="travello">
                        <div class="offer-content">
                            <p class="pera">
                                Our Vision
                            </p>
                            <div class="location">
                                <p class="name" style="font-size: 18px;">
                                    "To be the leading travel and tour company, recognized for our exceptional service,
                                    personalized experiences, and commitment to sustainable tourism, enriching the lives of
                                    our clients and the communities we touch."
                                </p>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-lg-6 col-md-6">
                    <a href="javascript::void(0)" class="offer-banner imgEffect4 wow fadeInLeft" data-wow-delay="0.0s">
                        <img src="{{ asset('assets/images/gallery/offercard-2.jpg') }}" alt="travello">
                        <div class="offer-content-two" style="max-width: 90%;">
                            <p class="pera">
                                Our Mission
                            </p>
                            <div class="location">
                                <p class="name" style="font-size: 18px;">
                                    - Provide unparalleled travel experiences by offering
                                    personalized and high-quality services that meet and exceed our clients'
                                    expectations.

                                    <br><br>

                                    - To be standard services and reliable company in Asia

                                    <br><br>

                                    - To be well-know company in Asia

                                    <br><br>

                                    - To satisfy our customers’ requirements by providing quality services according to
                                    their demands.
                                </p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>



@endsection
