<?php

namespace App\Http\Resources\Restaurant;

use Illuminate\Http\Resources\Json\Resource;

class RestaurantResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'name' => $this->name,
            'brief' => $this->brief,
            'address' => $this->address,
            'administrative_rating' => $this->public_likes->count() > 0 ? sqrt($this->public_likes->sum('menu_rating')*$this->public_likes->count()) : 'This Cheddar Mill restaurant is not Square-Rated yet',
            'href' => [
                'cheddar_mill_menus' => route('cheddar_mill_menus.index',$this->id)
            ]
        ];
    }
}
