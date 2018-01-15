<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\ManagerAttendanceSummary;
use App\ManagerAttendance;
use Carbon\Carbon;

class CreateAttendanceSummary extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $name = 'attendance_summary';
    protected $signature = 'attendance_summary';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'To create summary of attendance based on punch times of previous day.';

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
        $date = Carbon::yesterday()->toDateString();
        $attendance_marked = ManagerAttendance::where('date', $date)->orderBy('user_id')->orderBy('punch_time')->get();
        $user_id = -1;
        // initialized here to avoid wastage to space
        $helper_array = array();
        for($i=0;$i<sizeof($attendance_marked);) {
            $helper_array = array();
            while($i<sizeof($attendance_marked) && ($user_id == $attendance_marked[$i]->user_id)) {
                array_push($helper_array, array('type' => $attendance_marked[$i]->attype, 'punch_time' => $attendance_marked[$i]->punch_time));
                $i++;
            }
            if ($i > sizeof($attendance_marked)) break;
            if (!empty($helper_array)) {
                $summary = ManagerAttendanceSummary::where(array('user_id' => $user_id, 'date' => $date))->first();
                if (!$summary) $summary = new ManagerAttendanceSummary();
                $summary->user_id = $user_id;
                $summary->date = $date;
                $summary->in_time = $helper_array[0]['punch_time'];
                if (sizeof($helper_array) > 1) $summary->out_time = $helper_array[sizeof($helper_array)-1]['punch_time'];
                $summary->source = "Cron";
                $summary->created_by = 1;
                $summary->save();
            }
            if ($i < sizeof($attendance_marked))$user_id = $attendance_marked[$i]->user_id;
        }
    }
}
