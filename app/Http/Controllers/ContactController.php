<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreContact;
use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index()
    {
        return view('contact.index');
    }

    public function store(StoreContact $request)
    {
        $contact = new Contact();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->subject = $request->subject;
        $contact->phone = $request->phone;
        $contact->message = $request->message;
        $contact->submit_date = date('Y-m-d');
        $contact->save();
        return redirect()->back();
    }
}
