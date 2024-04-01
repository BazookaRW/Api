<?php

namespace Database\Seeders;

use App\Models\applications;
use App\Models\Purchases;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $count=30;
        for ($i = 0; $i < $count; $i++) {
            applications::create([
                'app_name' => fake()->company,
                'platform' => Arr::random(['android', 'iOS']),
                'end_point'=>fake()->url
            ]);
        }

//        $count=120;
//        for ($i = 0; $i < $count; $i++) {
//            purchases::create([
//                'device_id' => fake()->uuid,
//                'app_id' => rand(1,20),
//                'verification_status' => rand(0,1),
//                'receipt' => fake()->md5,
//            ]);
//        }


    }
}
