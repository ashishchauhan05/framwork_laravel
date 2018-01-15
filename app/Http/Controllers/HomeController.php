<?php namespace App\Http\Controllers;

use Illuminate\Database\Eloquent;
use Illuminate\Support\Facades\DB;
use View;
//use Request;
use Response;
use Illuminate\Http\Request;
use Session;
use Input;
use App\User;
use Auth;
use Laracasts\Flash\Flash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;
use App\Role;
use App\Permission;

class HomeController extends AbstractController {

	public function __construct()
	{
		parent::__construct();
        View::share('current_page', 'home');
	}

	/**
	 * Show the application dashboard to the user.
	 *
	 * @return Response
	 */
	public function index()	{
        $status = Session::get('status');
        return View::make('home.index', array('status'=>$status));
	}

	public function showSignin()	{
       
        $status = Session::get('status');
        return View::make('auth.login', array('status'=>$status));
	}

	public function doSignin(Request $request){

		$username = $request->username;
		$password = $request->password;

		if(!($username && $password)) {
			 $status = array('code' => 'error',
                        'header' => 'Error',	
                    	'messages' => array('Username and password required to login.')
                    );
			return redirect('/signin')->with('status', $status);
		}
		
		$userdata = array('email' => $username, 'password' => $password);
		$userdata2 = array('mobile' => $username, 'password' => $password);
		if(Auth::attempt($userdata) || Auth::attempt($userdata2)) {
			$status = array('code' => 'success',
	                    'header' => 'Success',
	                    'messages' => array('Login Success')
	                    );
			return redirect('/home')->with('status', $status);
		}else {
     	 	$status = array('code' => 'error',
                    'header' => 'Error',
                    'messages' => array('Invalid Username or password.')
                    );
        	return redirect('/signin')->with('status', $status);
	    }
	
  	}

  	public function logout()	{
        
        Auth::logout();
        $status = array('code' => 'success',
                    'header' => 'Success',
                    'messages' => array('Logout Success')
                    );
        return redirect('/signin')->with('status', $status);
	}

}
