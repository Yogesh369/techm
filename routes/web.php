<?php

use Illuminate\Support\Facades\Route;

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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::get('/route', 'RouterController@index')->name('route.index');
Route::get('/route/create', 'RouterController@create')->name('route.create');
Route::get('/route/edit/{id}', 'RouterController@edit')->where('id', '[0-9]+');
Route::post('/route/store', 'RouterController@store')->name('route.store');
Route::post('/route/update', 'RouterController@update')->name('route.update');
Route::get('/route/delete/{id}', 'RouterController@destroy')->where('id', '[0-9]+');

Route::get('/getrouters', 'RouterController@getrouters')->name('getrouters');


Route::get('/geometric', 'GeometricController@index')->name('geometric.index');
Route::get('/server', 'ServerController@index')->name('server.index');
