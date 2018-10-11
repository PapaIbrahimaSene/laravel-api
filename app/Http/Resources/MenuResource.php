<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class MenuResource extends Resource
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
            'id' => $this->id,
            'menus' => $this->menus,
            'menu_prices' => $this->menu_prices,
            'body' => $this->menus,
            'menu_rating' => $this->menu_rating,
            'menu_codes' => $this->menu_codes,
            'order_daily_quantities' => $this->order_daily_quantities
        ];
    }
}
