<?php namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PasswordChangeRequest extends FormRequest {

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules()
	{
		return [
            'password' => 'required|min:3',
            //'new_password' => 'required|between:6,20|confirmed',
            'new_password' => 'case_diff|numbers|letters|symbols|between:6,20|confirmed',
            
		];
	}

	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize()
	{
		return true;
	}

}
