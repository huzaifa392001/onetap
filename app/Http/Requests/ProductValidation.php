<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductValidation extends FormRequest
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
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            "quantity.*" => "required|max:50",
            "regular_price.*" => "required|max:50",
            // "image" => "required|max:500000",
        ];
    }

    public function messages()
    {
            return[
                'quantity.*.required' => 'Quantity field is required',
                'regular_price.*.required' => 'Regular Price field is required',
                // 'image' => 'Image field is required',
            ];
    }
}
