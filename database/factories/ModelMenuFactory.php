<?php

use App\Model\Restaurant;
use Faker\Generator as Faker;

/* @var Illuminate\Database\Eloquent\Factory $factory */

$factory->define(App\Model\Menu::class, function (Faker $faker) {
    return [
    	'restaurant_id' => function(){
    		return Restaurant::all()->random();
        },
        'menu_prices' => $faker->numberBetween(1,10000),
        'menu_rating' => $faker->numberBetween(1,10)
    ];
});
