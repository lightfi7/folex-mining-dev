<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RefLevel extends Model
{
    use HasFactory;
    protected $fillable = [
        'level',
        'ref_num',
        'rate'
    ];
}
