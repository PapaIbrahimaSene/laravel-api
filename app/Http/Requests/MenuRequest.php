<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MenuRequest extends FormRequest
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
     * Get the validation rules that apply to the menu request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'menus' => 'required',
            'menu_prices' => 'required|integer|between:1,10000',
            'menu_rating' => 'required|integer|between:1,10',
            'menu_codes' => 'required|string|size:1',
        ];
    }
}
