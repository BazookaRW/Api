<?php

namespace App\Providers;

use App\Models\Purchases;
use App\Models\Subscriptions;
use App\Observers\PurchasesObserver;
use App\Observers\SubscriptionObserver;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Purchases::observe(PurchasesObserver::class);
        Subscriptions::observe(SubscriptionObserver::class);

    }
}
