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
        Schema::table('customer_dpacks', function (Blueprint $table) {
            $table->string("file_ktp")->after('sales_id');
            $table->string("file_npwp")->nullable();
            $table->string("file_mail")->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('customer_dpacks', function (Blueprint $table) {
            //
        });
    }
};
