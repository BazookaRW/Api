<?php

namespace App\Http\Controllers;

use App\Events\SubscriptionStarted;
use App\Models\Devices;
use Illuminate\Http\Request;

class DeviceRegisterController extends Controller
{
    public function Index(Request $request){
        $vData=$request->validate([
            'uid'=>'required|',
            'appId'=>'required|exists:Applications,id',
            'lang'=>'required',
            'os'=>'required|in:iOS,Android',
        ]);

        $vData=array_merge($vData, ['client_token' => md5(time())]);
        $device = Devices::where('uid', $vData['uid'])->first();

        // Eğer cihaz varsa ve appId eşleşiyorsa, kayıt yapma
        if ($device && $device->appId === $vData['appId']) {
            return response()->json([
                'success' => true,
                'message' => 'Device already registered.',
                'device' => $device,
            ], 200);
        }

        // Eğer cihaz varsa ve appId farklıysa, appId'sini güncelle
        if ($device && $device->appId !== $vData['appId']) {
            $device->appId = $vData['appId'];
            $device->save();

            return response()->json([
                'success' => true,
                'message' => 'AppID updated for the device with the same uid.',
                'device' => $device,
            ], 200);
        }

        // Eğer cihaz yoksa, yeni bir cihaz oluştur
        $device = Devices::create([
            'uid' => $vData['uid'],
            'appId' => $vData['appId'],
            'lang' => $vData['lang'], // veya diğer özellikler
            'os' => $vData['os'],
            'client_token' => $vData['client_token'],
            // Diğer sütunları da gerektiği gibi ekleyin
        ]);

        $access_token = $device
            ->createToken($vData['os'], ['*'], now()->addWeek())
            ->plainTextToken;

        return response()->json([
            'success' => true,
            'message' => 'Device Registered',
            'access_token' => $access_token,
            'device' => $device,
        ], 200);

    }
}
