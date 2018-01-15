<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\PaymentLink;
use Razorpay\Api\Api;
use App\Appointment;

class PaymentLinkStatus extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $name = 'payment_link_status';
    protected $signature = 'payment_link_status';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'To update status of payment links issued.';

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
        $payment_links_models = PaymentLink::where('has_contributed', 0)->where('status', 'issued')->whereRaw('UNIX_TIMESTAMP(created_at) > '. strtotime("-1 day"))->get();
        $razorpay = new Api(env('RAZORPAY_KEY_ID'), env('RAZORPAY_KEY_SECRET'));
        foreach ($payment_links_models as $key => $link) {
            $out = $razorpay->invoice->fetch($link->invoice_id);
            $link->sms_status = $out->sms_status;
            $link->email_status = $out->email_status;
            $link->expired_at = (is_null($out->expired_at)) ? null : date("Y-m-d H:i:s", $out->expired_at);
            if ($out->status != 'issued') {
                $link->status = $out->status;
                if ($out->status == 'paid'){
                    $link->has_contributed = 1;
                    $link->payment_id = $out->payment_id;
                    $appointment = Appointment::find($link->appointment_id);
                    $appointment->prepaid_amount += floatval($out->amount)/100;
                    $appointment->prepaid_channel = 12;
                    $appointment->save();
                    unset($appointment);
                }
            }
            $link->save();
        }
    }
}
