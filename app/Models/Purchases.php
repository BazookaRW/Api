<?php

namespace App\Models;


use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use function Sodium\increment;


class Purchases extends Model
{
    use HasFactory;

    protected $fillable=[
        'device_id',
        'app_id',
        'verification_status',
        'receipt',
    ];




}
