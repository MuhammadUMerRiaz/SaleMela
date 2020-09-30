<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vendor extends Model
{
    public function vendor()
    {
        return $this->belongsTo(User::class);
    }
}
