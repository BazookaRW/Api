<?php

namespace App\Jobs;


use App\Models\Subscriptions;
use App\Services\GoogleAuthService;
use App\Services\IOSAuthService;
use Carbon\Carbon;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;


class UpdateExpiredSubscriptions implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     */
    public function handle(IOSAuthService $iosAuthService, GoogleAuthService $googleAuthService): void
    {


        $expireDate = Carbon::now()->addMonths(10);
        $subscriptions = Subscriptions::where('expire_date', '<', $expireDate)->get();

        foreach ($subscriptions as $subscription) {
            $result = false;

            if ($subscription->Application->platform == 'iOS') {
                $result = $iosAuthService->RateLimit($subscription->Receipt->receipt, $subscription);
            } else {
                $result = $googleAuthService->RateLimit($subscription->Receipt->receipt, $subscription);
            }

            // İşlem başarısız olduysa (false döndüyse) kuyruğa ekle
            if (!$result) {
                // İşlemi tekrar denemek üzere kuyruğa ekle
                UpdateExpiredSubscriptions::dispatch($subscription->id)->onQueue('retry_queue');
            } else {
                // İşlem başarılı olduysa statusu güncelle
                $subscription->status = $subscription->Application->platform;
                $subscription->save();
            }
        }
    }



}
