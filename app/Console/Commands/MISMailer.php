<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Helpers\GeneralHelper;
use App;
use App\Appointment;
use DB;
use Log;
use Mail;

class MISMailer extends Command
{

    /**
     * The console command name.
     *
     * @var string
     */
    protected $name = 'mis_mailer';

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'mis_mailer';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Mail Daily MIS';

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
    public function handle() {
        $today = date('Y-m-d');
        $yest = date('Y-m-d',strtotime("-1 days"));

        $query_strings_created = array("date"=>"DATE(appointments.created_at) = DATE(NOW() - INTERVAL 1 DAY)", "wtd"=>"YEARWEEK(appointments.created_at) = YEARWEEK(NOW())", "mtd"=>"YEAR(appointments.     created_at) = YEAR(CURRENT_DATE()) AND MONTH(appointments.created_at) = MONTH(CURRENT_DATE())");
        $query_strings_fulfilled = array("date"=>"date = '$yest'", "wtd"=>"YEARWEEK(date) = YEARWEEK(NOW())", "mtd"=>"YEAR(date) = YEAR(CURRENT_DATE()) AND MONTH(date) = MONTH(CURRENT_DATE())");

        $bookings_created_array = array();
        foreach ($query_strings_created as $qi=>$qv) {
            $bookings_created = DB::table('appointments')
                            ->select(DB::raw('channel, count(id) as customers, sum(offered_cost) as revenue'))
                            ->whereRaw($qv)
                            ->whereNotIn('status', ['TEST', 'DISPLAY_ONLY', 'DUPLICATE', 'INVALID'])
                            ->groupBy('channel')
                            ->get();
            foreach ($bookings_created as $b) {
                $bookings_created_array[$b->channel][$qi]['customers'] = $b->customers;
                $bookings_created_array[$b->channel][$qi]['revenue'] = $b->revenue;
            }
        }

        $bookings_fulfilled_array = array();
        foreach ($query_strings_fulfilled as $qi=>$qv) {
            $bookings_fulfilled = DB::table('appointments')
                                ->select(DB::raw('channel, count(id) as customers, sum(offered_cost) as revenue'))
                                ->whereRaw($qv)
                                ->where('status', 'FULFILLED')
                                ->groupBy('channel')
                                ->get();
            foreach ($bookings_fulfilled as $b) {
                $bookings_fulfilled_array[$b->channel][$qi]['customers'] = $b->customers;
                $bookings_fulfilled_array[$b->channel][$qi]['revenue'] = $b->revenue;
            }
        }

        $query_strings_created = array("date"=>"DATE(appointments.created_at) = DATE(NOW() - INTERVAL 1 DAY)", "wtd"=>"YEARWEEK(appointments.created_at) = YEARWEEK(NOW())", "mtd"=>"YEAR(appointments.     created_at) = YEAR(CURRENT_DATE()) AND MONTH(appointments.created_at) = MONTH(CURRENT_DATE())");
        $agent_bookings_created_array = array();
        foreach ($query_strings_created as $qi=>$qv) {
            $agent_bookings_created = DB::table('appointments')
                                        ->select(DB::raw('users.name, count(appointments.id) as customers, sum(offered_cost) as revenue'))
                                        ->leftJoin('users', 'users.id', '=', 'appointments.created_by')
                                        ->whereRaw($qv)
                                        ->whereNotIn('status', ['TEST', 'DISPLAY_ONLY', 'DUPLICATE', 'INVALID'])
                                        ->groupBy('appointments.created_by')
                                        ->get();
            foreach ($agent_bookings_created as $b) {
                if ($b->name==NULL)
                    $b->name = 'Customer';
                $agent_bookings_created_array[$b->name][$qi]['customers'] = $b->customers;
                $agent_bookings_created_array[$b->name][$qi]['revenue'] = $b->revenue;
            }
        }

        $agent_bookings_fulfilled_array = array();
        foreach ($query_strings_fulfilled as $qi=>$qv) {
            $agent_bookings_fulfilled = DB::table('appointments')
                                        ->select(DB::raw('users.name, count(appointments.id) as customers, sum(offered_cost) as revenue'))
                                        ->leftJoin('users', 'users.id', '=', 'appointments.created_by')
                                        ->whereRaw($qv)
                                        ->where('status', 'FULFILLED')
                                        ->groupBy('appointments.created_by')
                                        ->get();
            foreach ($agent_bookings_fulfilled as $b) {
                if ($b->name==NULL)
                    $b->name = 'Customer';
                $agent_bookings_fulfilled_array[$b->name][$qi]['customers'] = $b->customers;
                $agent_bookings_fulfilled_array[$b->name][$qi]['revenue'] = $b->revenue;
            }
        }
        $data=[
                'date_yest' => $yest,
                'date_today' => $today,
                'bookings_created_array' => $bookings_created_array,
                'bookings_fulfilled_array' => $bookings_fulfilled_array,
                'agent_bookings_created_array' => $agent_bookings_created_array,
                'agent_bookings_fulfilled_array' => $agent_bookings_fulfilled_array,
                'email' => 'mis@glamstudios.in'
            ];

        $data['email_to'] = $data['email'];
        $data['email_subject'] = 'Management MIS: '.$yest;
        $data['email_from'] = 'mis@glamstudios.in';
        $data['email_from_name'] = 'Glam MIS';
        try {
            $x = GeneralHelper::sendEmail('emails.mis.daily',$data);
        }catch(\Exception $e){
            print_r($e);
        }
    }
}
