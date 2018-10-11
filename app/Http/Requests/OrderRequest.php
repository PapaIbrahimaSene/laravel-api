<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class OrderRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the order request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'orders' => 'required',
            'order_codes' => 'required|string|size:1',
            'order_daily_quantities' => 'required|integer',
            'order_delivery_duration' => 'required|integer|between:1,1000',
            'order_agent' => 'required|string|size:25',
        ];
    }
}
