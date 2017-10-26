<?php

namespace App\Models;

use Backpack\CRUD\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class FamilyView extends Model {

    use CrudTrait;

    //put your code here
    protected $table = 'family_view';
    protected $fillable = ['name', 'slug', 'brand_name'];
    public $timestamps = false;

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
