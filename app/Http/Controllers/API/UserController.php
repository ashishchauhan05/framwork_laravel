<?php namespace App\Http\Controllers\API;

use App\Http\Controllers\AbstractController;
use Illuminate\Database\Eloquent;
use Illuminate\Support\Facades\DB;
use View;
use Input;
use Illuminate\Http\Request;
use Session;
use App\User;

class UserController extends AbstractController {

	public function __construct()
	{
		parent::__construct();
	}

    public function showList(Request $request) {
        $users = User::all();
        return response()->json($users);
    }

}
