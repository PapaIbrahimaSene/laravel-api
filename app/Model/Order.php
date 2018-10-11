<?php

namespace App\Model;

use App\Model\Restaurant;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
	protected $fillable = [
		'order_codes', 'order_daily_quantities'
	];

    protected $table = 'cheddar_mill_orders';

    public function Restaurant()
    {
    	return $this->belongsTo(Restaurant::class);
    }
}
