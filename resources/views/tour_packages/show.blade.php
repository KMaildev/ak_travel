@extends('layouts.main')
@section('title', 'Tour Package')
@section('content')

    <section class="breadcrumbs-area breadcrumb-bg">
        <div class="container">
            <h1 class="title wow fadeInUp" data-wow-delay="0.0s">Tour Details</h1>
            <div class="breadcrumb-text">
                <nav aria-label="breadcrumb" class="breadcrumb-nav wow fadeInUp" data-wow-delay="0.1s">
                    <ul class="breadcrumb listing">
                        <li class="breadcrumb-item single-list">
                            <a href="{{ route('home') }}" class="single">
                                Home
                            </a>
                        </li>
                        <li class="breadcrumb-item single-list" aria-current="page">
                            <a href="javascript:void(0)" class="single active">Tour Details</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>

    <section class="tour-details-section section-padding2">
        <div class="tour-details-area">

            <div class="tour-details-banner">
                <div class="swiper tourSwiper-active">
                    <div class="swiper-wrapper">
                        @php
                            $images = explode(',', $package->gallery);
                        @endphp
                        @foreach ($images as $image)
                            <div class="swiper-slide">
                                <img src="{{ $image }}" alt="travello"
                                    style="width: 100%; height: 300px; background-size: top; object-fit: cover;">
                            </div>
                        @endforeach
                    </div>
                    <div class="swiper-button-next"><i class="ri-arrow-right-s-line"></i></div>
                    <div class="swiper-button-prev"><i class="ri-arrow-left-s-line"></i></div>
                </div>
            </div>

            <div class="tour-details-container">
                <div class="container">
                    <div class="details-heading">
                        <div class="d-flex flex-column">
                            <h4 class="title">
                                {{ $package->title ?? '' }}
                            </h4>

                            <div class="d-flex flex-wrap align-items-center gap-30 mt-16">
                                <div class="d-flex align-items-center flex-wrap gap-20">
                                    <div class="count">
                                        <i class="ri-time-line"></i>
                                        <p class="pera">
                                            {{ $package->day_night ?? '' }}
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="price-review">
                            <div class="d-flex gap-10 align-items-end">
                                <p class="light-pera">From</p>
                                <p class="pera">
                                    {{ $package->price ?? '' }}
                                </p>
                            </div>

                            <div class="rating">
                                <i class="ri-star-s-fill"></i>
                                <i class="ri-star-s-fill"></i>
                                <i class="ri-star-s-fill"></i>
                                <i class="ri-star-s-fill"></i>
                                <i class="ri-star-s-fill"></i>
                            </div>
                        </div>
                    </div>

                    <div class="mt-30">
                        <div class="row g-4">
                            <div class="col-xl-12 col-lg-12">
                                <div class="tour-details-content">
                                    <h4 class="title">About Package</h4>
                                    <p class="pera">
                                        {!! $package->description ?? '' !!}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
