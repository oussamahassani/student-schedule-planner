<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmploiController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\FiliereController;
use App\Http\Controllers\EnseignantController;
use App\Http\Controllers\ExamController;
use App\Http\Controllers\ModuleController;
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
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/refresh', [AuthController::class, 'refresh']);
    Route::get('/user-profile', [AuthController::class, 'userProfile']);  
    Route::get('/current_user/{email}', [AuthController::class, 'currentUser']);    
    Route::get('/get/all_user/{filiere}', [AuthController::class, 'allUser']);    

});
// Fetch all emplois
Route::get('/emplois', [EmploiController::class, 'getAllData']);
Route::get('/matieres', [ModuleController::class, 'getAllData']);
// Fetch emplois by filiere
Route::get('/emplois/byStudent/{filiere}', [EmploiController::class, 'getByFiliere']);

Route::get('/exam/byStudent/{filiere}', [ExamController::class, 'getByFiliere']);
Route::get('/exam/byensignent/{enseignemnt}', [ExamController::class, 'getByEnseignemnt']);
Route::get('exam/bymatiere/{matiere}', [ExamController::class, 'getByMatiere']);


Route::get('/emplois/byensignent/{enseignemnt}', [EmploiController::class, 'getByEnseignemnt']);
// Fetch emplois by filiere and type
Route::get('/emplois/byFilter/{filiere}/{type}', [EmploiController::class, 'getByFiliereAndType']);
Route::get('/emplois/byFilter/{filiere}/{type}/{group}', [EmploiController::class, 'getByFiliereAndTypeAndGroup']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/filiere', [FiliereController::class, 'getAllData']);

Route::get('/enseignant', [EnseignantController::class, 'getAllData']);

// Fetch emplois by filiere
Route::get('/enseignant/{name}', [EnseignantController::class, 'getByName']);
Route::get('/byenseignant/{email}', [EnseignantController::class, 'getByEmail']);

