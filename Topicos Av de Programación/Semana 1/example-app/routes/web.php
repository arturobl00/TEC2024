<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\CursoController;

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

Route::get('/', HomeController::class);

Route::controller(CursoController::class)->group(function(){
    Route::get('cursos', 'index')->name('cursos.index');
    Route::get('cursos/create', 'create')->name('cursos.create');
    //Crear ruta para crear un registro de tipo post
    Route::post('cursos','store')->name('cursos.store');
    Route::get('cursos/{curso}', 'show')->name('cursos.show');

    Route::get('cursos/{curso}/edit', 'edit')->name('cursos.edit');

    //Crear ruta para el update
    Route::put('cursos/(curso)', 'update')->name('cursos.update');
});


/*
Route::get('cursos', [CursoController::class, 'index']);

Route::get('cursos/create', [CursoController::class, 'create']);

Route::get('cursos/{curso}', [CursoController::class, 'show']);
*/



/*
Route::get('cursos', function () {
    return 'Bienvenido a la pagina cursos';
});

Route::get('cursos/{curso}/{categoria?}', function($curso, $categoria = null){
    if($categoria){
        return "Bienvenidos al cruso: $curso, de la categoria: $categoria";
    }
    else{
        return "Bienvenido al curso: $curso";
    }
});

Route::get('cursos/{curso}', function ($curso) {
    return "Bienvenido al cursos: $curso";
});
*/

