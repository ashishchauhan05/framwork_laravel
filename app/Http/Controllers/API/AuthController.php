<?php namespace App\Http\Controllers\API;

use Validator;
use App\Http\Controllers\AbstractController;
use Illuminate\Database\Eloquent;
use Illuminate\Support\Facades\DB;
use View;
use App\User;
use Input;
use Illuminate\Http\Request;
use Session;
use Mail;
use App\Helpers\GeneralHelper;

class AuthController extends AbstractController {

	public function __construct()
	{
		parent::__construct();
	}

    public function login(Request $request) {
        $credentials = $request->only(['mobile', 'otp', 'instance_id']);
        $validator = Validator::make($credentials, [
                        'mobile' => 'required|min:10',
                        'otp' => 'required',
                        'instance_id' => 'required',
                        ]);
        
        if($validator->fails()) {
            return response()->json([
                'errors' => $validator->errors()
                ]);
        }
        $user = User::where('mobile', $request->mobile)->first();
        if (!$user) {
            return response()->json([
                'errors' => 'User not found'
                ]);
        } elseif ($user->otp != $request->otp) {
            return response()->json([
                'errors' => 'Wrong OTP'
                ]);
        } elseif ($user->instance_id != $request->instance_id) {
            return response()->json([
                'errors' => 'Wrong Instance ID'
            ]);
        } else {
            return response()->json([
                'success' => 'Valid User'
                ]);
        }
    }

    public function signup(Request $request) {
        $signupFields = ['name', 'email', 'mobile', 'instance_id'];
        $userData = $request->only($signupFields);
        $userData['otp'] = rand(1111,9999);

        $signup_fields_rules = [
                                'name' => 'required',
                                'email' => 'email',
                                'mobile' => 'required|min:10',
                                'instance_id' => 'required'
                                ];
        $validator = Validator::make($userData, $signup_fields_rules);
        if($validator->fails()) {
            //throw new ValidationHttpException($validator->errors()->all());
            return response()->json([
                                    'errors' => $validator->errors()
                                    ]);
        }

        User::unguard();
        $user = User::where('mobile', $userData['mobile'])->first();
        if ($user) {
            $user->otp = $userData["otp"];
            $user->instance_id = $userData["instance_id"];
            $user->save();
        } else {
			$userData['username'] = $userData["mobile"];
            $user = User::create($userData);
        }
        User::reguard();
        if(!$user->id) {
            return $this->response->error('could_not_create_user', 500);
        }
        $sms_mask = 'GOGLAM';
        $sms_username = 'feeroz@glamstudios.in';
        $sms_passwd = '38fd4256beb489a84e4857e573bf0a5d3ea9ce7f';
        $sms_message = 'GlamStudios: Your One Time Password is '.$user->otp;
        $sms_response = GeneralHelper::sendSMS($user->mobile, $sms_message, array('sms_type' => 'otp'));
        // $sms_response = $this->send_message($sms_username, $sms_passwd, $sms_mask, $user->mobile, $sms_message);
        return $user;
    }


    // private function send_message($sms_username, $sms_passwd, $sms_mask, $mobile, $sms_message) {
    //     $username = $sms_username;
    //     $hash = $sms_passwd;

    //     $numbers = array('91'.$mobile);
    //     $sender = urlencode($sms_mask);
    //     $message = rawurlencode($sms_message);

    //     $numbers = implode(',', $numbers);

    //     $data = array('username' => $username, 'hash' => $hash, 'numbers' => $numbers, "sender" => $sender, "message" => $message);

    //     $ch = curl_init('http://api.textlocal.in/send/');
    //     curl_setopt($ch, CURLOPT_POST, true);
    //     curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    //     curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    //     $response = curl_exec($ch);
    //     curl_close($ch);
    //     return $response;
    // }

}
