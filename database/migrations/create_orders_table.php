<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the orders migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cheddar_mill_orders', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('restaurant_id')->unsigned()->index();
            $table->foreign('restaurant_id')->references('id')->on('cheddar_mill_restaurants')->onDelete('cascade');
            $table->string('orders');
            $table->string('order_codes');
            $table->integer('order_daily_quantities');
            $table->integer('order_delivery_duration');
            $table->string('order_agent');
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
        Schema::dropIfExists('cheddar_mill_orders');
    }
}
