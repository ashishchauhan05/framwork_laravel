<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Helpers\GeneralHelper;
use App;

class AppointmentReminder extends Command
{

    /**
     * The console command name.
     *
     * @var string
     */
    protected $name = 'appointment_reminder';

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'appointment_reminder';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'To send reminder for the Salon appointment <X> hours prior to the visit.';

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
        // Get appointments between appointment reminder env value and appointment reminder time gap value
        $date = date("Y-m-d");
        if (env('SEND_APPOINTMENT_REMINDER_BEFORE') == null || env('APPOINTMENT_REMINDER_TIME_GAP') == null) return;
        $start_time = date("H:i", strtotime("+".env('SEND_APPOINTMENT_REMINDER_BEFORE')." seconds"));
        $end_time = date("H:i", strtotime("+".env('SEND_APPOINTMENT_REMINDER_BEFORE')+env('APPOINTMENT_REMINDER_TIME_GAP')." seconds"));
        $appointments = App\Appointment::where('date', $date)->where('channel', '!=', 'glamos')->whereRaw('time > "'.$start_time.'"')->whereRaw('time < "'.$end_time.'"')->whereIn('status', array('NEW', 'RESCHEDULED', 'CONFIRMED'))->get();
        // Interating over all appointments and ignoring those for whom sms was already sent.
        $flag = true;
        foreach ($appointments as $key => $appointment) {
            $flag = true;
            foreach ($appointment->SMSLogs as $key => $log) {
                if ($log->sms_type == 'reminder') {
                    $flag = false;
                    break;
                }
            }
            if (!$flag) continue;
            $message = App\MessageTemplate::where('title', 'Appointment reminder')->first();
            $text = $message->text;
            $text = str_replace('{{CustomerName}}',$appointment->name, $text);
            $text = str_replace('{{Salon Address}}',$appointment->salon->address, $text);
            $text = str_replace('{{BookingDate}}',"today", $text);
            $text = str_replace('{{BookingTime}}',$appointment->time, $text);
            $sms_response = GeneralHelper::sendSMS($appointment->mobile, $text, array('sms_type' => 'reminder', 'appointment_id' => $appointment->id));
        }
        
    }
}
