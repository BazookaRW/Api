<?php

namespace App\Listeners;


use App\Events\SubscriptionRenewed;
use App\Events\SubscriptionStarted;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class PostAPIUpdated implements ShouldQueue
{
    use InteractsWithQueue;
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(SubscriptionRenewed $event): void
    {

        $URL=$event->subscriptions->Application->end_point;
        $appId=$event->subscriptions->Application->end_point;
        $device_id=$event->subscriptions->device_id;
        $status=$event->subscriptions->status;


//        $response = Http::post($URL, [
//            'appID' => $appId,
//            'deviceID' => $device_id,
//            'status'=>$status
//        ]);


//        if (!$response->successful()) {
//            $this->release(10); // Başarısız olanları 10 saniye sonra tekrar dene
//        }

        Log::info('Updated: '.$URL .' '.$appId.' '.$device_id.' '.$status );
        }








}
