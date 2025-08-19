<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerDpack extends Model
{
    protected $fillable = [
        "code_customer",
        "name_owner",
        "shop_name",
        "address_home",
        "address_shop",
        "phone_number",
        "npwp",
        "ktp",
        "discount",
        "sales_id",
        "file_ktp",
        "file_npwp",
        "file_mail",
    ];


    public function sales()
    {
        return $this->belongsTo(SalesDpack::class);
    }
}
