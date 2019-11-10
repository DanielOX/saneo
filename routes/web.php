<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


// Event Route
Route::get('/events','EventController@index')->name('events');
Route::get('/event/show/{id}','EventController@show')->name('event.show');
// About-us
Route::get('/about-us','HomeController@about')->name('about-us');

// Packages
Route::get('/packages','PackageController@index')->name('packages');