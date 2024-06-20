<?php

namespace App\Http\Controllers;

use App\Models\TourPackage;
use Illuminate\Http\Request;

class TourPackagesController extends Controller
{
    public function show($id)
    {
        $package = TourPackage::findOrFail($id);
        return view('tour_packages.show', compact('package'));
    }
}
