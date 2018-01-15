<?php namespace App\Http\Controllers;

use View;
use Session;
use MetzWeb\Instagram\Instagram;

class AbstractController extends Controller {

    /**
     * Initializer.
     *
     * @return \AdminController
     */
    public function __construct()
    {
        
        View::share('app', 'TEST');
    }

}
