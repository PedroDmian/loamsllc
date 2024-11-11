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
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();

            $table->string('order_id', 200);
            $table->string('payment_id', 200)->nullable();
            $table->string('transaction_internal_id', 200);
            $table->double('price', 14, 4)->default(0);
            $table->string('status', 50)->default('PENDING');
            $table->string('email', 100)->nullable();
            $table->boolean('send_email')->default(0);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
