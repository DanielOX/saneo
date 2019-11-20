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
Route::get('/event/{id}/payment','EventController@payment')->name('event.pay');
Route::post('/event/charge','EventController@charge')->name('event.charge');


// About-us
Route::get('/about','HomeController@about')->name('about-us');

// Packages
Route::get('/packages','PackageController@index')->name('packages');

// Logout
Route::get('/logout','HomeController@logout')->name('logout');

// Payment
Route::get('/package/{id}/payment','PackageController@payment')->name('package.pay');
Route::post('/package/charge','PackageController@charge')->name('package.charge');