<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Product
 *
 * @author hoanvu
 */

namespace App\Models;

use Backpack\CRUD\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model {

    use CrudTrait;

    //put your code here
    protected $table = 'brands';
    protected $fillable = ['name', 'slug', 'logo','image'];
    public $timestamps = false;
    public $image;

    public function getLogo() {
            return $this->logo;
    }

    public function products() {
        return $this->hasMany('App\Models\Product', 'familyId', 'id');
    }

    public function countProduct() {
        return $this->hasMany('App\Models\Product', 'brandId', 'id');
    }

    /*
      |--------------------------------------------------------------------------
      | RELATIONS
      |--------------------------------------------------------------------------
     */

    /*
      |--------------------------------------------------------------------------
      | SCOPES
      |--------------------------------------------------------------------------
     */

    /*
      |--------------------------------------------------------------------------
      | ACCESORS
      |--------------------------------------------------------------------------
     */

    /*
      |--------------------------------------------------------------------------
      | MUTATORS
      |--------------------------------------------------------------------------
     */

    public function setLogoAttribute($value) {
        $attribute_name = "logo";
        $disk = "brands";
        $destination_path = "/";

        // if the image was erased
        if ($value == null) {
            // delete the image from disk
            \Storage::disk($disk)->delete($this->image);

            // set null in the database column
            $this->attributes[$attribute_name] = null;
        }

        // if a base64 was sent, store it in the db
        if (starts_with($value, 'data:image')) {
            // 0. Make the image
            $image = \Image::make($value);
            // 1. Generate a filename.
            $filename = md5($value . time()) . '.jpg';
            // 2. Store the image on disk.
            \Storage::disk($disk)->put($destination_path . '/' . $filename, $image->stream());
            // 3. Save the path to the database
            $this->attributes[$attribute_name] = $filename;
        }
    }

    public function getLogoAttribute($value) {
        return env('APP_URL') . '/images/brands/' . $value;
    }

    public function getImage() {
        $image = self::findOrFail($this->id);
        return '<img src="'. $image->logo.'" width="150">';
    }
    
    public function setNameAttribute($value) {
        $this->attributes['name'] = $value;
        
        if (empty($this->slug))
            $this->attributes['slug'] = str_slug($value);
    }


    public function setSlugAttribute($value) {
        if (empty($value))
            $value = str_slug($this->name);

        $this->attributes['slug'] = $value;
    } 

}
