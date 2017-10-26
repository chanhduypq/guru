<?php

namespace App\Http\Controllers\Admin;

use App\Models\Brand;
use App\Models\Family;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

/**
 * Class DemoController
 *
 * @package App\Http\Controllers\Frontend
 *
 * @author <huynhtuvinh87@gmail.com>
 */
class AjaxController extends Controller {

    public function family(Request $request) {
        $model = Family::select('id', 'name', 'brandId')->where('brandId', $request->id)->get();
        return view('vendor.backpack.ajax.family', compact('model'));
    }

}
