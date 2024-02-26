<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Producto extends Model
{
    use HasFactory;

    public function categoria_p_s(): BelongsTo{
        return $this->belongsTo(CategoriaP::class);
    }

    protected $fillable = [
        'name_product',
        'precio',
        'stock',
        'categoria_p_s_id'
    ];
}
