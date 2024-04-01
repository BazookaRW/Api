<?php

namespace App\Console\Commands;

use App\Jobs\UpdateExpiredSubscriptions;
use Illuminate\Console\Command;

class CheckExpired extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:check-expired';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Cancel expired products';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        UpdateExpiredSubscriptions::dispatch();
        $this->info('ListRecords job dispatched successfully.');
    }
}
