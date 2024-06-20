@extends('layouts.main')
@section('title', 'Destination')
@section('content')

    <section class="breadcrumbs-area breadcrumb-bg">
        <div class="container">
            <h1 class="title wow fadeInUp" data-wow-delay="0.0s">Destination</h1>
            <div class="breadcrumb-text">
                <nav aria-label="breadcrumb" class="breadcrumb-nav wow fadeInUp" data-wow-delay="0.1s">
                    <ul class="breadcrumb listing">
                        <li class="breadcrumb-item single-list"><a href="{{ route('home') }}" class="single">Home</a></li>
                        <li class="breadcrumb-item single-list" aria-current="page"><a href="javascript:void(0)"
                                class="single active">Destination</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>

    <section class="destination-details-section section-padding2">
        <div class="container">
            <div class="row g-4">
                <div class="col-xl-8 col-lg-7">

                    <div class="destination-details-banner o-hidden radius-12">
                        <div class="swiper destinationSwiper-active">
                            <div class="swiper-wrapper">

                                @php
                                    $images = explode(',', $destination->gallery);
                                @endphp
                                @foreach ($images as $image)
                                    <div class="swiper-slide">
                                        <img src="{{ $image }}" alt="travello"
                                            style="width: 100%; height: 300px; background-size: top; object-fit: cover;">
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <div class="destination-details-content">
                        <h4 class="title">
                            {{ $destination->title ?? '' }}
                        </h4>
                        <p class="pera">
                            {!! $destination->description ?? '' !!}
                        </p>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-5">
                    <div class="row g-4 position-static top-0">
                        <div class="col-lg-12">
                            <div class="destination-offer-three">
                                <div class="destination-content-offer">
                                    <h4 class="title">The Best Travel Adventure</h4>
                                    <a href="{{ route('contact.index') }}" class="btn-secondary-sm radius-30">
                                        Contact Now
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="tour-list-card">
                                <h4 class="title">Destination</h4>
                                <ul class="tour-listing">

                                    @foreach ($destinations as $destination)
                                        @php
                                            $firstPhoto = explode(',', $destination->gallery ?? '')[0] ?? '';
                                        @endphp
                                        <li class="list">
                                            <div class="package-img imgEffect4">
                                                <a href="{{ route('destination.show', $destination->id) }}">
                                                    <img src="{{ $firstPhoto }}" alt="travello">
                                                </a>
                                            </div>
                                            <div class="package-content">
                                                <h4 class="area-name">
                                                    <a href="{{ route('destination.show', $destination->id) }}">
                                                        {{ $destination->title ?? '' }}
                                                    </a>
                                                </h4>
                                            </div>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
