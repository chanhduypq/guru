<?php

namespace App\Models;

use Backpack\CRUD\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class Family extends Model
{
    use CrudTrait;

    //put your code here
    protected $table = 'family';
    protected $fillable = ['name', 'slug','brandId'];
    public $timestamps    = false;
    public function threeProducts() {
        return $this->hasMany('App\Models\Product', 'familyId', 'id')->take(3);
    }

    public function countProduct() {
        return $this->hasMany('App\Models\Product', 'familyId', 'id');
    }
    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
     */

    public function brand()
    {
        return $this->hasOne('App\Models\Brand', 'id', 'brandId');
    }
    
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
