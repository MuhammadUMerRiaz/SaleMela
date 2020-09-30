<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index()
    {
        return view('adminPanel.dashboard');
    }
    public function vendorlogin()
    {
        return view('adminPanel.adminauth.login');
    }
}
