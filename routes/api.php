<?php

use Illuminate\Http\Request;
use App\Http\Controllers\APIEmployeesController;
use App\Http\Controllers\APIAttendancesController;

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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::post('/employes_add', [APIEmployeesController::class, 'store']);
Route::get('/employes', [APIEmployeesController::class, 'index']);
Route::get('/get_employes/{id}', [APIEmployeesController::class, 'staff_by_manager']);
Route::get('/employees/{id}', [APIEmployeesController::class, 'show']);

Route::get('/attendancess', [APIAttendancesController::class, 'index']);

Route::match(array('GET', 'POST'),'/employess', [APIEmployeesController::class, 'globas']); 

