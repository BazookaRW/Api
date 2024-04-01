<?php
namespace App\Services;

use App\Jobs\UpdateExpiredSubscriptions;
use App\Models\Purchases;
use App\Models\Subscriptions;
use Carbon\Carbon;


class IOSAuthService
{
    public function verifyReceipt($receipt,$app,$device_id)
    {

        // Receipt'in son karakterini alıp tek sayı olup olmadığını kontrol ediyoruz.
        $lastChar = intval(substr($receipt, -1));
        $status = ($lastChar % 2 === 1) ? true : false;
        if($status==true){
            Purchases::create([
                'device_id'=>$device_id,
                'app_id'=>$app->id,
                'receipt' => $receipt,
                'verification_status' => $status,
            ],$receipt);

            $expireDate=Subscriptions::where('app_id',$app->id)->first();
            return [
                'status' => $status,
                'expire-date' =>$expireDate->expire_date,
                'app'=>$app,
            ];
        }else{
            Purchases::create([
                'device_id'=>$device_id,
                'app_id'=>$app->id,
                'receipt' => $receipt,
                'verification_status' => $status,
            ],$receipt);

            $expireDate=Subscriptions::where('app_id',$app->id)->first();
            return [
                'status' => $status,
                'expire-date' =>Carbon::now()->addMonth()->format('Y-m-d H:i:s'),
                'app'=>$app,
            ];
        }
    }

    public function RateLimit($request,$data)
    {
        $receipt = $request;
        $lastTwoDigits = substr($receipt, -2);
        if ($lastTwoDigits % 6 == 0) {
            UpdateExpiredSubscriptions::dispatch($data)->onQueue('rate_limit_queue');
            return false;
        }
        return true;
    }
}
