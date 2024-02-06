<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('cursos', function (Blueprint $table) {
            $table->id(); //Columna id de tipo entero auto incrementable
            $table->string('name'); //Columna string de 255 caracteres
            $table->text('description'); //Columna string de mas de 255 caracteres
            $table->text('category');
            $table->timestamps(); //Crea la columna create_at y update_at se almacena el log de los registros
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cursos');
    }
};
