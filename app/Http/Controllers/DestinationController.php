<?php

namespace App\Http\Controllers;

use App\Models\Destination;
use Illuminate\Http\Request;

class DestinationController extends Controller
{
    public function index(Request $request)
    {
        $query = Destination::query();

        if ($request->has('search')) {
            $search = $request->input('search');
            $query->where(function ($q) use ($search) {
                $q->where('title', 'like', "%$search%");
            });
        }

        $destinations = $query->get();

        return view('destination.index', compact('destinations'));
    }

    public function show($id)
    {
        $destination = Destination::findOrFail($id);
        $destinations = Destination::all();
        return view('destination.show', compact('destination', 'destinations'));
    }
}
