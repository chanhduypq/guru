<?php

namespace App\Models;

use Backpack\CRUD\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class Product extends Model {

    use CrudTrait;

    /*
      |--------------------------------------------------------------------------
      | GLOBAL VARIABLES
      |--------------------------------------------------------------------------
     */

    protected $table = 'products';
    protected $primaryKey = 'id';
    public $timestamps = false;
// protected $guarded = ['id'];
    protected $fillable = ["brandId", "familyId", "reference", "name", "slug", "price", "movementType", "diameter", "material", "images", 'image'];

// protected $hidden = [];
// protected $dates = ["createAt","updateAt"];

    /*
      |--------------------------------------------------------------------------
      | FUNCTIONS
      |--------------------------------------------------------------------------
     */
    public function brand() {
        return $this->hasOne('App\Models\Brand', 'id', 'brandId');
    }

    public function family() {
        return $this->hasOne('App\Models\Family', 'id', 'familyId');
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

    public function setImagesAttribute($value) {
        $attribute_name = "images";
        $disk = "watches";
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
            $filename = '123' . md5($value . time()) . '.jpg';
// 2. Store the image on disk.
            \Storage::disk($disk)->put($destination_path . '/' . $filename, $image->stream());
// 3. Save the path to the database
            $this->attributes[$attribute_name] = $filename;
        }
    }

    public function getImage($url_only = false) {
        $image = self::findOrFail($this->id);
        if ($url_only)
            return env('APP_URL') . '/images/watches/' . $image->images;
        
        
        return '<img src="' . env('APP_URL') . '/images/watches/' . $image->images . '" width="150">';
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
