@extends('layouts.main')
@section('title', 'Welcome')
@section('content')
    @include('layouts.slider')


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


    <section class="special-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-7">
                    <div class="section-title mx-430 mx-auto text-center">
                        <span class="highlights fancy-font font-400">Enjoy Trip</span>
                        <h4 class="title">
                            Top International Tour
                        </h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">

                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-domestic" role="tabpanel"
                            aria-labelledby="pills-domestic-tab">
                            <div class="row g-4">
                                @foreach ($flights as $flight)
                                    <div class="col-xl-6 col-md-6">
                                        <a href="javascript::void(0)" class="trip-card"
                                            style="border-radius: 10px 10px 0px 0px;">
                                            <div class="from-flex">
                                                <h4 class="from-title">
                                                    {{ $flight->from ?? '' }}
                                                </h4>
                                                <p class="from-pera line-clamp-1">
                                                    {{ $flight->from_airport ?? '' }}
                                                </p>
                                            </div>
                                            <div class="trip-icon-flex">
                                                <div class="trip-icon"><i class="ri-flight-takeoff-fill"></i></div>
                                            </div>
                                            <div class="from-flex">
                                                <h4 class="from-title">
                                                    {{ $flight->to ?? '' }}
                                                </h4>
                                                <p class="from-pera line-clamp-1">
                                                    {{ $flight->arrival_airport ?? '' }}
                                                </p>
                                            </div>
                                        </a>

                                        <p style="text-align: center; font-size: 19px; background-color: #EAEBEE">
                                            {{ $flight->price ?? '' }}
                                        </p>
                                    </div>
                                @endforeach

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <br><br>

    <section class="destination-area destination-bg-before" style="padding-top: 50px;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-7">
                    <div class="section-title text-center mx-430 mx-auto position-relative">
                        <span class="highlights">Destination List</span>
                        <h4 class="title">
                            Explore The Beautiful Places Around World
                        </h4>
                    </div>
                </div>
            </div>
            <div class="row g-4">
                @foreach ($destinations as $destination)
                    @php
                        $firstPhoto = explode(',', $destination->gallery ?? '')[0] ?? '';
                    @endphp
                    <div class="col-lg-4 col-sm-6">
                        <a href="{{ route('destination.show', $destination->id) }}" class="destination-banner h-calc">
                            @if ($firstPhoto)
                                <img src="{{ $firstPhoto }}" alt="AK Bate Thar Travel & Tours"
                                    style="width: 100%; height: 300px; background-size: top; object-fit: cover;">
                            @endif
                            <div class="destination-content">
                                <div class="ratting-badge">
                                    <i class="ri-star-s-fill"></i>
                                </div>
                                <div class="destination-info">
                                    <div class="destination-name">
                                        <p class="pera">
                                            {{ $destination->title ?? '' }}
                                        </p>
                                        <div class="location">
                                            <p class="name">
                                                AK Bate Thar Travel & Tours
                                            </p>
                                        </div>
                                    </div>
                                    <div class="button-section">
                                        <div class="arrow-btn"><i class="ri-arrow-right-line"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="shape">
            <img src="{{ asset('assets/images/icon/shape.png') }}" alt="travello">
        </div>
    </section>

    <br>


    <section class="feature-area feature-area-bg section-padding2">
        <div class="container">
            <div class="row justify-content-center position-relative z-10">
                <div class="col-xl-7 col-lg-7">
                    <div class="section-title mx-430 mx-auto text-center">
                        <span class="highlights fancy-font font-400">Features Tour</span>
                        <h4 class="title">
                            Most Favorite Tour Place in The World
                        </h4>
                    </div>
                </div>
            </div>

            <div class="row g-4 position-relative z-10">
                <div class="swiper favSwiper-active">

                    <div class="swiper-wrapper">
                        @foreach ($tour_packages as $package)
                            @php
                                $firstPhoto = explode(',', $package->gallery ?? '')[0] ?? '';
                            @endphp
                            <div class="swiper-slide">
                                <div class="package-card">
                                    <div class="package-img imgEffect4">
                                        <a href="{{ route('tour-packages.show', $package->id) }}">
                                            <img src="{{ $firstPhoto }}" alt="travello">
                                        </a>
                                        <div class="image-badge">
                                            <p class="pera">
                                                {{ $package->price ?? '' }}
                                            </p>
                                        </div>
                                        <div class="fav-badge">
                                            <i class="ri-heart-fill"></i>
                                        </div>
                                    </div>
                                    <div class="package-content">
                                        <div class="location">
                                            <div class="name">
                                                {{ $package->day_night ?? '' }}
                                            </div>
                                        </div>
                                        <h4 class="area-name">
                                            <a href="{{ route('tour-packages.show', $package->id) }}">
                                                {{ $package->title ?? '' }}
                                            </a>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>

                    <div class="swiper-button-next">
                        <i class="ri-arrow-right-s-line"></i>
                    </div>
                    <div class="swiper-button-prev">
                        <i class="ri-arrow-left-s-line"></i>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
