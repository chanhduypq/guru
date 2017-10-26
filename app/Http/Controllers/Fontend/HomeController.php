<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace App\Http\Controllers\Fontend;
use App\Models\Brand;
use App\Http\Controllers\Controller;

/**
 * Description of IndexController
 *
 * @author hoanvu
 */
class HomeController extends Controller {
    public function index(){
        $grands = Brand::where([])->get();
        
        return view('home.index')->with('grands',$grands);
    }
}
