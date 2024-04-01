<?php

namespace App\Observers;

use App\Models\Purchases;
use App\Models\Subscriptions;
use Carbon\Carbon;

class PurchasesObserver
{
    /**
     * Handle the Purchases "created" event.
     */
    public function created(Purchases $purchases): void
    {
            if($purchases->verification_status==true){
                $Subscriptions = Subscriptions::firstOrNew(['device_id' =>$purchases->device_id,'app_id'=>$purchases->app_id]);
                $Subscriptions->purchase_id=$purchases->id;
                $Subscriptions->status = (!$Subscriptions->exists) ? 'started' : 'renewed';
                $expireDate = Carbon::parse($Subscriptions->expire_date)->addMonth();
                $Subscriptions->expire_date = $expireDate;
                $Subscriptions->save();
            }
    }
    /**
     * Handle the Purchases "updated" event.
     */
    public function updated(Purchases $purchases): void
    {
        //
    }

    /**
     * Handle the Purchases "deleted" event.
     */
    public function deleted(Purchases $purchases): void
    {
        //
    }

    /**
     * Handle the Purchases "restored" event.
     */
    public function restored(Purchases $purchases): void
    {
        //
    }

    /**
     * Handle the Purchases "force deleted" event.
     */
    public function forceDeleted(Purchases $purchases): void
    {
        //
    }
}
