<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace App\Http\Controllers\Fontend;

use App\Models\Brand;
use App\Models\Family;
use App\Models\Product;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

/**
 * Description of IndexController
 *
 * @author hoanvu
 */
class ProductController extends Controller
{

    public function brand($brandSlug, Request $req)
    {
        $brand = Brand::where(['slug' => $brandSlug])->first();
        if (empty($brand))
        {
            return view('fontend.errors.404');
        }
        $families = Family::where(['brandId' => $brand->id])->get();
        return view('fontend.brand.index', compact('brand'))->with('families', $families)->with('input', $req->all());
    }

    public function family($brandSlug, $familySlug, Request $req)
    {

        $brand = Brand::where(['slug' => $brandSlug])->first();
        if (empty($brand))
        {
            return view('fontend.errors.404');
        }
        $family = Family::where(['slug' => $familySlug])->first();
        if (empty($family))
        {
            return view('fontend.errors.404');
        }
        $query = Product::where(['familyId' => $family->id, 'brandId' => $brand->id]);
        if ($req->searchKey)
        {
            $query->where(function($q) use ($req)
            {
                $q->orWhere('name', 'LIKE', '%' . $req->searchKey . '%');
                $q->orWhere('slug', 'LIKE', '%' . str_slug($req->searchKey) . '%');
            });
        }
        $limit = $req->limit ? (int) $req->limit : 10;
        $page = $req->page ? (int) $req->page : 0;
        $products = $query->paginate($limit, ['*'], 'page', $page);

        return view('fontend.product.family', compact('family', 'brand'))->with('products', $products)->with('input', $req->all());
    }

    public function search(Request $req)
    {
        if ($req->brandSlug)
        {
            $brand = Brand::where(['slug' => $req->brandSlug])->first();
            if (empty($brand))
            {
                return view('fontend.errors.404');
            }
        }
        $query = Product::select('products.*');
        $query->leftjoin('brands', 'brands.id', '=', 'products.brandId');
        $query->leftjoin('family', 'family.id', '=', 'products.familyId');
        $query->where(function($q) use ($req)
        {
            $q->orWhere('products.name', 'LIKE', '%' . $req->searchKey . '%');
            $q->orWhere('products.reference', 'LIKE', '%' . $req->searchKey . '%');
            $q->orWhere('brands.name', 'LIKE', '%' . $req->searchKey . '%');
            $q->orWhere('family.name', 'LIKE', '%' . $req->searchKey . '%');
        });
        if (!empty($brand))
            $query->where('products.brandId', $brand->id);

        $limit = $req->limit ? (int) $req->limit : 10;
        $page = $req->page ? (int) $req->page : 0;
        $products = $query->paginate($limit, ['*'], 'page', $page);

        return view('fontend.product.index', compact('brand'))->with('products', $products)->with('input', $req->all());
    }

    public function detail($brandSlug, $familySlug, $productSlug, Request $req)
    {

        $product = Product::where(['slug' => $productSlug])->first();
        if (empty($product))
        {
            return view('fontend.errors.404');
        }
        return view('fontend.product.detail', compact('product'));
    }

}
