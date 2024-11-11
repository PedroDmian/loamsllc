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
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->double('price', 14, 4);

            $table->boolean('square_is_production')->default(false)->nullable();

            $table->string('square_live_applicant_id', 100)->nullable();
            $table->string('square_live_access_token', 100)->nullable();
            $table->string('square_live_location_id', 100)->nullable();

            $table->string('square_sandbox_applicant_id', 100)->nullable();
            $table->string('square_sandbox_access_token', 100)->nullable();
            $table->string('square_sandbox_location_id', 100)->nullable();

            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('settings');
    }
};
