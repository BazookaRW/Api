<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PurchaseController;
use App\Http\Controllers\DeviceRegisterController;
use App\Http\Controllers\SubscriptionController;


    Route::post('/register',[DeviceRegisterController::class,'Index'])->name('register');

    Route::middleware('auth:sanctum')->group(function (){
        Route::post('/purchase',[PurchaseController::class,'RequestPurchase']);
        Route::post('/check-subscription',[SubscriptionController::class,'CheckSubscription']);
        Route::post('/cancel',[SubscriptionController::class,'Cancel']);
    });





