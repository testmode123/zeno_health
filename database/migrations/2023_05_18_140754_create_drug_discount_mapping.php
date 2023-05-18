<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('drug_discount_mapping', function (Blueprint $table) {
            $table->id();
            $table->integer('drug_id');
            $table->integer('fixed_discount')->default(0);
            $table->integer('percentage_discount')->default(0);
            $table->tinyInteger('buy_one_get_one_free')->default(0)->comment('0=>NO, 1=>Yes');
            $table->tinyInteger('single_product_greater_500')->default(0)->comment('0=>NO, 1=>Yes');
            $table->tinyInteger('status')->default(1)->comment('0=>inactive, 1=>active');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('drug_discount_mapping');
    }
};
