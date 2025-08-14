<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pic extends Model
{
    protected $fillable = [
        "name",
        "division_id"
    ];

    public function division()
    {
        return $this->belongsTo(Division::class);
    }

    public function vehicle()
    {
        return $this->belongsTo(Vehicle::class);
    }
}
