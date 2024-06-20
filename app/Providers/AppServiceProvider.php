<?php

namespace App\Providers;

use App\Models\Service;
use App\Models\TourPackage;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $tour_packages = TourPackage::all();
        view()->share('tour_packages', $tour_packages);

        $services = Service::all();
        view()->share('services', $services);
    }
}
