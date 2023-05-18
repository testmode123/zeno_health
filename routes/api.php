<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DrugsController;

Route::controller(AuthController::class)->group(function () {
    Route::post('login', 'login');
    Route::post('register', 'register');
    Route::post('logout', 'logout');

});


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });


Route::controller(DrugsController::class)->group(function(){
	Route::get('getList', 'getList');
	Route::post('create', 'create');
	Route::get('drug/{id}', 'edit');
	Route::put('drug/{id}', 'update');
	Route::delete('drug/{id}', 'delete');
	Route::post('calculate_price', 'calculateFinalPrice');
});