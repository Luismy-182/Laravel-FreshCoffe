<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\PedidoController;
use App\Http\Controllers\ProductoController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->group(function(){
    Route::get('/user', function (Request $request) {
        return $request->user();
    });
    //si el usuario quire cerrar session debe estar detras de sactum, de lo contrario
    //si quierrece serrar sesion y no estas logeado te tira un arror
    Route::post('/logout', [AuthController::class, 'logout']);


    //almacenar ordenes
    Route::apiResource('/pedidos', PedidoController::class);
    //api categoria
Route::apiResource('/categorias', CategoriaController::class);
//api producto
Route::apiResource('/productos', ProductoController::class);



});



//autentificacion
Route::post('/registro', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);