<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SalesDpack extends Model
{
    protected $fillable = [
        "sales_name"
    ];


    public function customers()
    {
        $this->hasMany(CustomerDpack::class);
    }
}
