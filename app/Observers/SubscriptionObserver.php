<?php

namespace App\Observers;

use App\Events\SubscriptionCancel;
use App\Events\SubscriptionRenewed;
use App\Events\SubscriptionStarted;
use App\Models\Subscriptions;
use Illuminate\Support\Facades\Log;

class SubscriptionObserver
{
    /**
     * Handle the Subscriptions "created" event.
     */
    public function created(Subscriptions $subscriptions): void
    {
        event(new SubscriptionStarted($subscriptions));
    }

    /**
     * Handle the Subscriptions "updated" event.
     */
    public function updated(Subscriptions $subscriptions): void
    {

        event(new SubscriptionRenewed($subscriptions));

    }

    /**
     * Handle the Subscriptions "deleted" event.
     */
    public function deleted(Subscriptions $subscriptions): void
    {
        //
    }

    /**
     * Handle the Subscriptions "restored" event.
     */
    public function restored(Subscriptions $subscriptions): void
    {
        //
    }

    /**
     * Handle the Subscriptions "force deleted" event.
     */
    public function forceDeleted(Subscriptions $subscriptions): void
    {
        //
    }
}
