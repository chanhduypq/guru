<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */


Route::group(['prefix' => 'admin', 'middleware' => 'admin'], function() {
    // Backpack\CRUD: Define the resources for the entities you want to CRUD.
    CRUD::resource('user', 'Admin\UserCrudController');
    CRUD::resource('product', 'Admin\ProductCrudController');
    CRUD::resource('family', 'Admin\FamilyCrudController');
    CRUD::resource('brand', 'Admin\BrandCrudController');
    Route::get('ajax/family', ['as' => 'ajax.family', 'uses' => 'Admin\AjaxController@family']);
});


Route::group(['namespace' => 'Fontend'], function () {
    Route::get('/', 'HomeController@index');
    Route::get('importExport', 'ImportController@importExport');
    Route::get('downloadExcel/{type}', 'ImportController@downloadExcel');
    Route::post('importExcel', 'ImportController@importExcel');
    Route::get('search', 'ProductController@search');
    Route::get('/{brandSlug}', 'ProductController@brand');
    Route::get('/{brandSlug}/result', 'ProductController@search');
    Route::get('/{brandSlug}/{familySlug}', 'ProductController@family');
    Route::get('/{brandSlug}/{familySlug}/{productSlug}', 'ProductController@detail');
});


