<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Vehicle extends Model
{
    protected $fillable = [
        "license_plate", 
        "pic_id",
        "merk", 
        "model", 
        "vehicle_number", 
        "engine_number", 
        "date_tax_1_year", 
        "date_tax_5_year"
    ];

    public function pic()
    {
        return $this->belongsTo(Pic::class);
    }

    public function submissions()
    {
        return $this->hasMany(Submission::class);
    }
}
