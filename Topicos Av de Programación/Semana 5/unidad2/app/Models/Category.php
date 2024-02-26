<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Category extends Model
{
    use HasFactory;

    //el nombre de la funcion se toma de la migración en este caso products
    //se escoje el tipo de relación para este caso fue Hasmany
    //se toma el nombre del modelo para retornar los datos en este caso Product

    public function products(): HasMany{
        return $this->hasMany(Product::class);
    }
}
