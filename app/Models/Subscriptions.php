<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subscriptions extends Model
{
    use HasFactory;

    protected $fillable=[
        'device_id',
        'purchase_id',
        'app_id',
        'status',
        'expire_date'
    ];

    protected $hidden=[
        'id',
        'purchase_id',
        'created_at',
        'updated_at'
    ];


    public function Application()
    {
        return $this->belongsTo(Applications::class, 'app_id','id');
    }

    public function Receipt(){
        return $this->belongsTo(Purchases::class, 'purchase_id','id');
    }

}
