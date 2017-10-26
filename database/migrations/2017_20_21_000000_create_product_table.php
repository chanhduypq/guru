<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductTable extends Migration {
    private $dbName = 'products';

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create($this->dbName, function (Blueprint $table) {
            $table->increments('id');
            $table->integer('brandId');
            $table->integer('familyId');
            $table->string('name');
            $table->string('slug');
            $table->string('material')->nullable();
            $table->string('images')->nullable();
            $table->double('price')->nullable();
            $table->string('movementType')->nullable();
            $table->string('reference')->nullable();
            $table->string('diameter')->nullable();
            $table->timestamp('createdAt')->nullable();
            $table->timestamp('updatedAt')->nullable();

            $table->engine = 'myiSam';
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