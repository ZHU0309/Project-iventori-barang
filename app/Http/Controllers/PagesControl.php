<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesControl extends Controller
{
    public function home()
    {
        return view('index');
    }
    public function me()
    {
        return view('me');
    }




}
