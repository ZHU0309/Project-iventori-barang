<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Baranng extends Model
{
    protected $table='tbbarang';

    protected $primaryKey = 'id';
    protected $fillable =['KDBRG','NMBRG','SATUAN','JNSBRG','STOK'];
    
}
