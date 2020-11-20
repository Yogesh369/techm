<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GeometricController extends Controller
{
    public function index()
    {
        $data['pagename']='Geometric';
        $data['description']='Geometric Shape';        
        return view('geometric.index',$data);
    }
}
