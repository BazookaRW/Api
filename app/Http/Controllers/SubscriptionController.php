<?php

namespace App\Http\Controllers;

use App\Events\SubscriptionCancel;
use App\Models\Devices;

use App\Models\Subscriptions;
use Illuminate\Http\Request;

class SubscriptionController extends Controller
{
   public function CheckSubscription(Request $request){

       $vData=$request->validate([
           'client_token'=>'required|exists:Devices,client_token'
       ]);
       $Data=Devices::where('client_token',$vData['client_token'])->first();
       $Data->load('Subscriptions.Application');


       $responseData = $Data->Subscriptions->map(function($subscription) {
           return [
               'application' => [
                   'app_name' => $subscription->Application->app_name,
                   'platform' => $subscription->Application->platform,
               ],
               'status' => $subscription->status,
               'expire_date' => $subscription->expire_date,
           ];
       });

       return response()->json(
           $responseData,
       200);

   }

   public function Cancel(Request $request){
       $vData=$request->validate([
           'client_token'=>'required|exists:Devices,client_token'
       ]);

       $Data=Devices::where('client_token',$vData['client_token'])->first();
       $subscriptions = Subscriptions::where('device_id', $Data->uid)->get();
       foreach ($subscriptions as $subscription) {
           $subscription->update(['status' => 'canceled']);
           event(new SubscriptionCancel($subscription));
       }
       return response()->json([
           'message'=>'cancaled.'
       ],200);

   }
}
