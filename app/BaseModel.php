<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Helpers\Commons;

/**
 * base user model
 */
class BaseModel extends Model {
    const CREATED_AT = 'createdAt';
    const UPDATED_AT = 'updatedAt';

    public $wasNew = false;

    public function save(array $options = array()) {
        if (!$this->exists) {
            $this->wasNew = true;
        }

        parent::save($options);
    }

}
