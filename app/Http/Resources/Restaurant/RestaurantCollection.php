<?php

namespace App\Http\Resources\Restaurant;

use Illuminate\Http\Resources\Json\Resource;

class RestaurantCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'name' => $this->name,
            'administrative_rating' => $this->public_likes->count() > 0 ? sqrt($this->public_likes->sum('menu_rating')*$this->public_likes->count()) : 'This Cheddar Mill restaurant is not Square-Rated yet',
            'href' => [
                'link' => route('cheddar_mill_restaurants.show',$this->id)
            ]
        ];
    }
}
