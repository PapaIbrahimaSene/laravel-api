<?php

namespace App\Model;

use App\Model\Menu;
use Illuminate\Database\Eloquent\Model;

class Restaurant extends Model
{
	protected $fillable = [
	 'brief'
	];

	protected $table = 'cheddar_mill_restaurants';

	protected $hidden = [
		'password'
	];

	protected $guarded = [
		'id', 'password',
	];

    public function cheddar_mill_menus()
    {
    	return $this->hasMany(Menu::class);
	}

	public function cheddar_mill_orders()
    {
    	return $this->hasMany(Order::class);
    }
}
