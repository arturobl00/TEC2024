<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Patient extends Model
{
    use HasFactory;
    public function owners(){
        return $this->belongsTo(Owner::class);
    }

    public function treatments(){
        return $this->hasMany(Treatment::class);
    }
}
