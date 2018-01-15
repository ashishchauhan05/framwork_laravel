<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Helpers\GeneralHelper;
use App\BusinessDaily;
use App;
use Log;

class AppointmentEditPermission extends Command
{

    /**
     * The console command name.
     *
     * @var string
     */
    protected $name = 'disallow_old_appointment_edit';

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'disallow_old_appointment_edit';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Disallow the edit of all the old appointments.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $now = strtotime("now");
        $cutofftime = $now - env('DISALLOW_APPOINTMENT_BEFORE_DAYS')*24*60*60;
        $cutoffdate = date('Y-m-d', $cutofftime);
        //Log::info($cutoffdate);

        BusinessDaily::where('date', '<=', $cutoffdate)->update(['can_edit' => 'n']);
    }
}
