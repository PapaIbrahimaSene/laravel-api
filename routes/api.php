<?php

use Illuminate\Http\Request;


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('/cheddar_mill_restaurants','RestaurantController');

Route::group(['prefix'=>'cheddar_mill_restaurants'],function(){
    Route::apiResource('/{Restaurant}/cheddar_mill_menus','MenuController');
    Route::apiResource('/{Restaurant}/cheddar_mill_orders','OrderController');
});
