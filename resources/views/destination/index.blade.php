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

    <section class="destination-section bottom-padding1">
        <div class="destination-area">
            <div class="container">
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
        </div>
    </section>

@endsection
