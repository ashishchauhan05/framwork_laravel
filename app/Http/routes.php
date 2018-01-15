<?php

/*

| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::group(['roles' => ['admin','sub_admin'], 'middleware' => 'auth'], function() {

    Route::pattern('id', '[0-9]+');
    Route::pattern('id2', '[0-9]+');

    Route::get('/', 'HomeController@index');
    Route::get('home', 'HomeController@index');

    Route::get('users/data', 'UserController@data');
    Route::get('users/create', 'UserController@getCreate');
    Route::post('users/create', 'UserController@postCreate');
    Route::get('users/add_edit_roles/{id}', 'UserController@getRoles');
    Route::post('users/add_edit_roles/{id}', 'UserController@postRoles');
    Route::post('users/add_edit_permissions/{id}', 'UserController@postPermissions');
    Route::get('users/{id}/edit', 'UserController@getEdit');
    Route::post('users/{id}/edit', 'UserController@postEdit');
    Route::get('users/{id}/delete', 'UserController@getDelete');
    Route::post('users/{id}/delete', 'UserController@postDelete');

});

Route::get('signin', 'HomeController@showSignin');
Route::post('signin', 'HomeController@doSignin');
Route::get('signup', 'HomeController@showSignup');
Route::post('signup', 'HomeController@doSignup');
Route::get('logout', 'HomeController@logout');

Route::group(['prefix' => 'api', 'namespace' => 'API'], function() {
   
    Route::get('users', 'UserController@showList');
});
