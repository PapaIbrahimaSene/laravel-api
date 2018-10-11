<?php

use Faker\Generator as Faker;

/* @var Illuminate\Database\Eloquent\Factory $factory */

$factory->define(App\Model\Restaurant::class, function (Faker $faker) {
    return [
        'brief' => $faker->paragraph,
        'user_id' => function(){
        	return App\User::all()->random();
        },
    ];
});
