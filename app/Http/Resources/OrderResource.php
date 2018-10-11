<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class OrderResource extends Resource
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
 /**        'user_id' => $this->id,     */

            'restaurant_id' => $this->restaurant_id,

            'orders' => $this->orders,
 /**        'order_id' => $this->orders,    */

            'order_codes' => $this->order_codes,
 /**        'menu_items' => $this->order_codes,      */

            'order_daily_quantities' => $this->order_daily_quantities,
            'body' => $this->orders,
            'order_delivery_duration' => $this->order_delivery_duration,
            'order_agent' => $this->order_agent
        ];
    }
}
