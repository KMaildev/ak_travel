<footer>
    <div class="footer-wrapper footer-bg">
        <div class="container">
            <div class="footer-area">
                <div class="row g-4">

                    <div class="col-xl-3 col-lg-4 col-sm-6">
                        <div class="single-footer-caption">
                            <div class="footer-tittle">
                                <h4 class="title">
                                    Quick Links
                                </h4>
                                <ul class="listing">
                                    <li class="single-list">
                                        <a href="{{ route('home') }}" class="single" style="color: white">
                                            Home
                                        </a>
                                    </li>

                                    <li class="single-list">
                                        <a href="{{ route('about.index') }}" class="single" style="color: white">
                                            About Us
                                        </a>
                                    </li>

                                    <li class="single-list">
                                        <a href="{{ route('destination.index') }}" class="single" style="color: white">
                                            Destination
                                        </a>
                                    </li>

                                    <li class="single-list">
                                        <a href="{{ route('contact.index') }}" class="single" style="color: white">
                                            Contact Us
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-4 col-sm-6">
                        <div class="single-footer-caption">
                            <div class="footer-tittle">
                                <h4 class="title">
                                    Tour Packages
                                </h4>
                                <ul class="listing">
                                    @foreach ($tour_packages as $tour_package)
                                        <li class="single-list">
                                            <a href="{{ route('tour-packages.show', $tour_package->id) }}"
                                                class="single" style="color: white">
                                                {{ $tour_package->title ?? '' }}
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-3 col-sm-6">
                        <div class="single-footer-caption">
                            <div class="footer-tittle">
                                <h4 class="title">
                                    Contact Us
                                </h4>
                                <ul class="listing">
                                    <li class="single-lsit">
                                        <a href="#" class="mb-20 d-block">
                                            No.1299, 2nd floor, Mahawthadar St,(40)ward, North Dagon Tsp, Yangon,
                                            Myanmar
                                        </a>
                                    </li>
                                    <li class="single-lsit">
                                        <a href="#">
                                            <div class="d-flex gap-12">
                                                <i class="ri-phone-line"></i>
                                                +95 9 883 311722, +95 9 883 311 722
                                            </div>
                                        </a>
                                    </li>
                                    <li class="single-lsit">
                                        <a href="#">
                                            <div class="d-flex gap-12">
                                                <i class="ri-mail-line"></i>
                                                akbatethartours@gmail.com
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-4 col-sm-6">
                        <div class="single-footer-caption">
                            <div class="footer-tittle">
                                <h4 class="title">
                                    Facebook
                                </h4>
                                <div id="fb-root">
                                    <div class="fb-page" data-href="https://www.facebook.com/akbatethar"
                                        data-tabs="timeline" data-height="240" data-small-header="false"
                                        data-adapt-container-width="true" data-hide-cover="false"
                                        data-show-facepile="true">
                                    </div>

                                    <script>
                                        (function(d, s, id) {
                                            var js, fjs = d.getElementsByTagName(s)[0];
                                            if (d.getElementById(id)) return;
                                            js = d.createElement(s);
                                            js.id = id;
                                            js.src =
                                                'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v3.1&appId=310515396183252&autoLogAppEvents=1';
                                            fjs.parentNode.insertBefore(js, fjs);
                                        }(document, 'script', 'facebook-jssdk'));
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="d-flex justify-content-center gap-14 flex-wrap">
                            <p class="pera">
                                © <span class="current-year">2024</span> AK Bate Thar Travel & Tours. All rights
                                reserved
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
