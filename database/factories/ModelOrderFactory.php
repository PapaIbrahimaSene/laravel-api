<?php

use App\Model\Restaurant;
use Faker\Generator as Faker;

/* @var Illuminate\Database\Eloquent\Factory $factory */

$factory->define(App\Model\Order::class, function (Faker $faker) {
    return [
    	'restaurant_id' => function(){
    		return Restaurant::all()->random();
        },
        'order_daily_quantities' => $faker->numberBetween(1,10000),
        'order_codes' => $faker->randomElement($array = array ('A','B','C','D','E','F','G','H','I','J','K','L'))
    ];
});
