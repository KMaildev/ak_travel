@extends('layouts.main')
@section('title', 'Service')
@section('content')

    <section class="breadcrumbs-area breadcrumb-bg">
        <div class="container">
            <h1 class="title wow fadeInUp" data-wow-delay="0.0s">Service Details</h1>
            <div class="breadcrumb-text">
                <nav aria-label="breadcrumb" class="breadcrumb-nav wow fadeInUp" data-wow-delay="0.1s">
                    <ul class="breadcrumb listing">
                        <li class="breadcrumb-item single-list"><a href="{{ route('home') }}" class="single">Home</a></li>
                        <li class="breadcrumb-item single-list" aria-current="page"><a href="javascript:void(0)"
                                class="single active">Service</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>

    <section class="destination-details-section section-padding2">
        <div class="container">
            <div class="row g-4">
                <div class="col-xl-8 col-lg-7">
                    <div class="news-details-banner imgEffect">
                        <img src="{{ $service->photo ?? '' }}" alt="travello">
                    </div>
                    <div class="news-details-content">
                        <h4 class="title">
                            {{ $service->title ?? '' }}
                        </h4>
                        <p class="pera">
                            {!! $service->description ?? '' !!}
                        </p>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-5">
                    <div class="row g-4 position-sticky top-0">
                        <div class="col-lg-12">
                            <div class="search-filter-section">
                                <div class="heading">
                                    <h4 class="title">Recent News</h4>
                                </div>
                                <ul class="recent-news-list">
                                    @foreach ($services as $service)
                                        <li class="list">
                                            <h4 class="title line-clamp-2">
                                                <a href="{{ route('service.show', $service->id) }}">
                                                    {{ $service->title ?? '' }}
                                                </a>
                                            </h4>
                                            <div class="d-flex justify-content-between flex-wrap gap-8">
                                                <div class="d-flex align-items-center gap-8">
                                                    <i class="ri-time-line"></i>
                                                    <p class="date">
                                                        AK Bate Thar Travel & Tours
                                                    </p>
                                                </div>
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
