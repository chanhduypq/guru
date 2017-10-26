<?php

namespace App\Http\Controllers\Fontend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Models\Family;
use App\Models\Product;
use App\Models\Brand;
use Excel;
use Input;

class ImportController extends Controller {

    public function importExport() {
        return view('importExport');
    }

    public function importExcel() {
        
        if (Input::hasFile('import_file')) {
            $path = Input::file('import_file')->getRealPath();
            $data = Excel::load($path, function($reader) {
                    
                }, 'ISO-8859-1')->get();
            $i = 0;

            if (!empty($data) && $data->count()) {

                foreach ($data as $key => $value) {
                    $brandSearch = Brand::where(['slug' => str_slug($value->brand)])->first();
                    if (empty($brandSearch)) {
                        $brandSearch = Brand::create([
                                'slug' => str_slug($value->brand),
                                'name' => $value->brand,
                                'logo' => $value->logo,
                        ]);
                    }
                    $familySearch = Family::where(['slug' => str_slug($value->family)])->first();
                    
                    if (empty($familySearch)) {
                        $familySearch = Family::create([
                                'slug' => str_slug($value->family),
                                'name' => $value->family,
                                'brandId' => $brandSearch->id
                        ]);
                    }
                    
                    $productSearch = Product::where(['slug' => str_slug($value->name)])->first();
                    if (!empty($productSearch))
                        $slug = str_slug($value->name).'-'.$value->watchs_id;
                    else
                        $slug = str_slug($value->name);

                    $insert = [
                        'slug' => $slug,
                        'name' => $value->name,
                        'brandId' => $brandSearch->id,
                        'familyId' => $familySearch->id,
                        'material' => $value->material,
                        'reference' => $value->reference,
                        'diameter' => $value->diameter,
                        'images' => $value->images,

                        'movementType' => $value->movement_type,
                        'createdAt' => date('Y-m-d H:i'),
                        'updatedAt' => date('Y-m-d H:i')
                    ];
                    
                    Product::insert($insert);
                }
                if (!empty($insert)) {
                    //Product::insert($insert);
                    dd('Insert Record successfully.');
                }
            }
        }
        return back();
    }

}
