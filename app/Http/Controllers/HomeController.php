<?php

namespace App\Http\Controllers;

use App\Models\Destination;
use App\Models\Flight;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $flights = Flight::all();
        $destinations = Destination::all();
        return view('welcome', compact('flights', 'destinations'));
    }
}
