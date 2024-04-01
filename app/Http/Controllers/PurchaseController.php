<?php

namespace App\Http\Controllers;


use App\Models\Applications;
use App\Models\Devices;
use App\Services\GoogleAuthService;
use App\Services\IOSAuthService;
use Illuminate\Http\Request;



class PurchaseController extends Controller
{


    public function RequestPurchase(Request $request,IOSAuthService $iosAuthService, GoogleAuthService $googleAuthService){
        $vData=$request->validate([
            'client_token'=>'required|exists:Devices,client_token', //check et
            'receipt'=>'required',
        ]);

        //TOKEN İLE CİHAZIN PLATFORMUNU BUL
        $catchDevice=Devices::where('client_token',$vData['client_token'])->first();

            // ILGILI PLATFORM İÇİN DOĞRULAMAYI YAP
            $App=Applications::find($catchDevice->appId);
            if($catchDevice->platform=='iOS'){
                $result = $iosAuthService->verifyReceipt($vData['receipt'],$App,$catchDevice->uid);
            }else{
                $result = $googleAuthService->verifyReceipt($vData['receipt'],$App,$catchDevice->uid);
            }
        return response()->json($result);

    }




}
