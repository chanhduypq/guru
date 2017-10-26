<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBrandTable extends Migration {

    private $dbName = 'brands';

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create($this->dbName, function (Blueprint $table) {

            $table->increments('id');
            $table->string('name');
            $table->string('slug');
            $table->string('logo')->nullable();
            $table->engine = 'myiSam';
            $table->timestamp('createdAt')->nullable();
            $table->timestamp('updatedAt')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::drop($this->dbName);
    }

}
