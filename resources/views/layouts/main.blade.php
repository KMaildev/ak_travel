<!DOCTYPE html>
<html lang="zxx" dir="lrt">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
    <script>
        const setTheme = (theme) => {
            theme ??= localStorage.theme || "light";
            document.documentElement.dataset.theme = theme;
            localStorage.theme = theme;
        };
        setTheme();
    </script>

    <meta property="og:locale" content="en_US" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="AK Bate Thar Travel & Tours" />
    <meta property="og:description " content="AK Bate Thar Travel & Tours" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:image:alt" content="AK Bate Thar Travel & Tours" />
    <link rel="shortcut icon" href="{{ asset('data/logo.png') }}" />
    <meta property="og:image" content="{{ asset('data/logo.png') }}" />

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>
        AK Bate Thar Travel & Tours @yield('title')
    </title>

    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap-5.3.0.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/remixicon.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/plugin.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/main-style.css') }}">
</head>

<body>

    @include('layouts.menu')

    <main>
        @yield('content')
    </main>

    @include('layouts.footer')

    <div class="progressParent" id="back-top">
        <svg class="backCircle svg-inner" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
        </svg>
    </div>
    <div class="search-overlay"></div>
    <script src="{{ asset('assets/js/jquery-3.7.0.min.js') }}"></script>
    <script src="{{ asset('assets/js/popper.min.js') }}"></script>
    <script src="{{ asset('assets/js/bootstrap-5.3.0.min.js') }}"></script>
    <script src="{{ asset('assets/js/plugin.js') }}"></script>
    <script src="{{ asset('assets/js/main.js') }}"></script>

    <script type="text/javascript" src="{{ url('vendor/jsvalidation/js/jsvalidation.js') }}"></script>

    @yield('script')
</body>

</html>
