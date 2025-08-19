<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('customer_dpacks', function (Blueprint $table) {
            $table->id();
            $table->string('code_customer')->unique();
            $table->string('name_owner');
            $table->string('shop_name');
            $table->string('address_home');
            $table->string('address_shop');
            $table->string('phone_number');
            $table->string('npwp');
            $table->string('ktp');
            $table->float('discount');
            $table->foreignId('sales_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customer_dpacks');
    }
};
