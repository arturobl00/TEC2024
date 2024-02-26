<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Product extends Model
{
    use HasFactory;
    //Hasmany Contiene
    //BelogsTo Pertence
    //el nombre de la funcion se toma de la migración en este caso categories
    //se escoje el tipo de relación para este caso fue BelongsTo
    //se toma el nombre del modelo para retornar los datos en este caso Product

    public function categories(): BelongsTo{
        return $this->belongsTo(Category::class);
    }
}
