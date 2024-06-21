<header class="header-area-three">
    <div class="main-header">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="top-menu-wrapper d-flex align-items-center justify-content-between">

                            <div class="top-header-right">
                                <div class="contact-section">
                                    <div class="circle-primary-sm">
                                        <i class="ri-phone-line"></i>
                                    </div>
                                    <div class="info">
                                        <p class="pera">Call Anytime</p>
                                        <h4 class="title">
                                            <a href="tel:+95 9 883 311722">
                                                +95 9 883 311722
                                            </a>
                                        </h4>
                                    </div>
                                </div>
                            </div>

                            <div class="logo">
                                <a href="{{ route('home') }}">
                                    {{-- changeLogo --}}
                                    <img src="{{ asset('data/logo.png') }}" alt="logo" class="" style="width: 100px;">
                                </a>
                            </div>

                            <div class="header-right-three pl-15 d-none d-lg-flex">
                                <div class="d-flex gap-20 align-items-center">
                                    <div class="sign-btn">
                                        <a href="mailto:" class="btn-secondary-sm radius-30">
                                            Send Mail
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="search-header-position d-block d-lg-none">
                                <div class="d-flex gap-15">

                                    {{-- <div class="search-bar">
                                        <a href="javascript:void(0)" class="rounded-btn">
                                            <i class="ri-search-line"></i>
                                        </a>
                                    </div> --}}

                                    {{-- <button class="ToggleThemeButton change-theme-mode m-0 p-0 border-0">
                                        <i class="ri-sun-line"></i>
                                    </button> --}}

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="header-bottom header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="menu-wrapper">
                            <!-- Main-menu for desktop -->
                            <div class="main-menu d-none d-lg-block">
                                <nav>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <ul class="listing" id="navigation">

                                            <li class="single-list">
                                                <a href="{{ route('home') }}" class="single">
                                                    Home
                                                </a>
                                            </li>

                                            <li class="single-list">
                                                <a href="{{ route('about.index') }}" class="single">
                                                    About Us
                                                </a>
                                            </li>

                                            <li class="single-list">
                                                <a href="javascript:void(0)" class="single">
                                                    Our Services
                                                    <i class="ri-arrow-down-s-line"></i>
                                                </a>
                                                <ul class="submenu">
                                                    @foreach ($services as $service)
                                                        <li class="single-list">
                                                            <a href="{{ route('service.show', $service->id) }}"
                                                                class="single">
                                                                {{ $service->title ?? '' }}
                                                            </a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </li>

                                            <li class="single-list">
                                                <a href="{{ route('destination.index') }}" class="single">
                                                    Destination
                                                </a>
                                            </li>

                                            <li class="single-list">
                                                <a href="javascript:void(0)" class="single">
                                                    Tour Packages
                                                    <i class="ri-arrow-down-s-line"></i>
                                                </a>
                                                <ul class="submenu">
                                                    @foreach ($tour_packages as $tour_package)
                                                        <li class="single-list">
                                                            <a href="{{ route('tour-packages.show', $tour_package->id) }}"
                                                                class="single">
                                                                {{ $tour_package->title ?? '' }}
                                                            </a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </li>

                                            <li class="single-list">
                                                <a href="{{ route('contact.index') }}" class="single">
                                                    Contact Us
                                                </a>
                                            </li>

                                        </ul>

                                        <div class="search-box search-bar d-none d-lg-block">
                                            <div class="header-search">
                                                <span class="pera">Destination, attraction</span>
                                                <div class="search-icon">
                                                    <i class="ri-search-line"></i>
                                                </div>
                                                <kbd class="light-text">
                                                    <abbr title="Ctrl">Ctrl +</abbr> k
                                                </kbd>
                                            </div>
                                        </div>
                                    </div>
                                </nav>
                            </div>
                        </div>

                        <div class="div">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="search-container" style="height: 70px;">
        <div class="top-section">
            <div class="search-icon">
                <i class="ri-search-line"></i>
            </div>
            <div class="modal-search-box">
                <form action="" method="GET">
                    <input type="text" id="searchField" class="search-field" name="search"
                        placeholder="Destination" autofocus>
                </form>
            </div>
        </div>
    </div>
</header>
