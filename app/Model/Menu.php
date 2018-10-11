<?php

namespace App\Model;

use App\Model\Restaurant;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
	protected $fillable = [
		'menu_prices', 'menu_rating'
	];

	protected $table = 'cheddar_mill_menus';

    public function Restaurant()
    {
    	return $this->belongsTo(Restaurant::class);
    }
}
