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
        Schema::create('drugs', function (Blueprint $table) {
            $table->id();
            $table->integer('drug_id')->nullable(false);
            $table->string('drug_name')->nullable(false);
            $table->decimal('mrp', 10,4)->nullable()->default('0.0');
            $table->decimal('ptr', 10,4)->nullable()->default('0.0');
            $table->datetime('expire_date')->nullable();
            $table->string('barcode')->nullable();
            $table->enum('type',['ethical', 'generic','ayurvedic','otc','surgical','general'])->default('generic');
            $table->tinyInteger('status')->nullable()->default(1);
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
        Schema::dropIfExists('drugs');
    }
};
