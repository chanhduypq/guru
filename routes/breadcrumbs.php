<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of breadcrumbs
 *
 * @author hoanvu
 */
Breadcrumbs::register('home', function($breadcrumbs) {
    $breadcrumbs->push('Home', action('Fontend\HomeController@index'));
});
Breadcrumbs::register('brand', function($breadcrumbs, $brand) {
    $breadcrumbs->parent('home');
    $breadcrumbs->push($brand->name, action('Fontend\ProductController@brand', $brand->slug));
});
Breadcrumbs::register('family', function($breadcrumbs, $brand, $family) {
    $breadcrumbs->parent('brand', $brand);
    $breadcrumbs->push($family->name, action('Fontend\ProductController@family', ['brandSlug' => $brand->slug, 'familySlug' => $family->slug]));
});
Breadcrumbs::register('product', function($breadcrumbs, $product) {
    $breadcrumbs->parent('family', $product->brand,$product->family);
    $breadcrumbs->push($product->name, action('Fontend\ProductController@detail',[
        'productSlug'=>$product->slug,
        'brandSlug' => $product->brand->slug, 'familySlug' => $product->family->slug]));
});
