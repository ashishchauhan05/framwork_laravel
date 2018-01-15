<?php

namespace App\Helpers;

use Auth;
use App\SMSLog;
use App\Salon;
use App\CouponTemplate;
use App\Coupon;
use App\CouponDiscount;
use App\Service;
use App\PaymentLink;
use App\Payment;
use Razorpay\Api\Api;
use Illuminate\Http\Request;
use App\NotificationLog;
use Mail;

use App\VoucherTemplate;
use App\GiftVoucher;
use App\VoucherAppointments;

class GeneralHelper {
    public static function search_object($obj, $field, $value){
        foreach($obj as $o) {
            if($o->$field==$value)
                return $o;
        }
        return false;
    }

   
    public static function sendSMS($mobile, $message, $logs = array(), $log_flag = true) {

        if(\Config::get('app.app_env') != 'production' || !(\Config::get('app.send_sms'))) {

             return json_encode(array('status' => 'skiped'));
        }

    }


    static function sendEmail($template,$data) {

        if(\Config::get('app.app_env') != 'production') {

             return json_encode(array('status' => 'skipped'));
        }
        try{
           
        } catch(\Exception $e){
        }
    }


    public static function sendFCMPush($to, $data, $logs = array(), $target, $log_flag = true) {

        if(\Config::get('app.app_env') != 'production' || !(\Config::get('app.send_sms'))) {

             return json_encode(array('status' => 'skiped'));
        }

       
    }

     public static function convert_amount($number) {

       $no = intval($number);
       $point = round($number - $no, 2) * 100;
       $hundred = null;
       $digits_1 = strlen($no);
       $i = 0;
       $str = array();
       $words = array('0' => '', '1' => 'one', '2' => 'two',
        '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six',
        '7' => 'seven', '8' => 'eight', '9' => 'nine',
        '10' => 'ten', '11' => 'eleven', '12' => 'twelve',
        '13' => 'thirteen', '14' => 'fourteen',
        '15' => 'fifteen', '16' => 'sixteen', '17' => 'seventeen',
        '18' => 'eighteen', '19' =>'nineteen', '20' => 'twenty',
        '30' => 'thirty', '40' => 'forty', '50' => 'fifty',
        '60' => 'sixty', '70' => 'seventy',
        '80' => 'eighty', '90' => 'ninety');
       $digits = array('', 'hundred', 'thousand', 'lakh', 'crore');
       while ($i < $digits_1) {
         $divider = ($i == 2) ? 10 : 100;
         $number = floor($no % $divider);
         $no = floor($no / $divider);
         $i += ($divider == 10) ? 1 : 2;
         if ($number) {
            $plural = (($counter = count($str)) && $number > 9) ? 's' : null;
            $hundred = ($counter == 1 && $str[0]) ? 'and ' : null;
            $str [] = ($number < 21) ? $words[$number] .
                " " . $digits[$counter] . $plural . " " . $hundred
                :
                $words[floor($number / 10) * 10]
                . " " . $words[$number % 10] . " "
                . $digits[$counter] . $plural . " " . $hundred;
         } else $str[] = null;
      }

      $str = array_reverse($str);
      $result = implode('', $str);
      $string = $result;

        return $string;
    }

     public static function convert_number_to_words($number) {

        $num = intval($number);
        $dec_n = round($number - $num, 2) * 100;
        $num = GeneralHelper::convert_amount($num);
        $dec = GeneralHelper::convert_amount($dec_n);

        if($dec_n == 0)
        {
            $string = ucfirst($num)."rupees";
        }
        else if($dec_n != 0)
        {
            $string = ucfirst($num)."rupees, ".$dec."paise";
        }

        return $string;
    }

}
