<?php

use Illuminate\Http\Request;
use App\Http\Controllers\dummyAPI;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoryController;

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


Route::group(['middleware' => 'auth:sanctum'], function () {
    // secure route only used when user is authenticated
    Route::get('/test', [dummyAPI::class, 'getData']);
    Route::post('comment/{id}', [CommentController::class, 'add']);
    Route::delete('comment/{id}', [CommentController::class, 'delete']);
    Route::put('comment/{id}', [CommentController::class, 'update']);
});
Route::post('login', [AuthController::class, 'login']);
Route::post('register', [AuthController::class, 'register']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::middleware(['auth:sanctum'])->group(function () {
    Route::post('logout', [AuthController::class, 'logout']);
});

Route::get('comments/{id}', [CommentController::class, 'getData']);
Route::get('categories', [CategoryController::class, 'list']);


