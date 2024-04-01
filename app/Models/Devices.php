<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Devices extends Model
{
    use HasFactory,HasApiTokens;

    protected $fillable=[
        'uid',
        'client_token',
        'appId',
        'lang',
        'os'
    ];

    protected $hidden=[
        'id',
        'created_at',
        'updated_at'
    ];

    public function Subscriptions()
    {
        return $this->hasMany(Subscriptions::class,'device_id','uid');
    }






}
