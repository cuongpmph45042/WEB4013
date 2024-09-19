<?php

use App\Http\Controllers\BookController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [BookController::class, 'home'])->name('page.home');
Route::get('/category/{category_id}', [BookController::class, 'list'])->name('page.list-book');
Route::get('/detail/{id}', [BookController::class, 'detail'])->name('page.detail');