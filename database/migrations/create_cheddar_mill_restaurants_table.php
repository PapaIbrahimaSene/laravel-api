<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRestaurantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cheddar_mill_restaurants', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->text('brief');
            $table->text('address', 250)->nullable();
            $table->alpha_num('manager_password');
            $table->bigInteger('public_likes')->nullable();
            $table->dateTime('last_publicly_liked')->index('last_publicly_liked');
            $table->boolean('cheddar_pizza_discounts');
            $table->text('restaurant_advertising_visual_url', 16777215)->nullable();
            $table->integer('user_id')->unsigned()->index();
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
        Schema::dropIfExists('cheddar_mill_restaurants');
    }
}
