<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Helpers\GeneralHelper;
use App\AppDeviceInformation;
use App;
use Log;

class SweepUninstalledApp extends Command
{

    /**
     * The console command name.
     *
     * @var string
     */
    protected $name = 'sweep_uninstalled_app';

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sweep_uninstalled_app';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Clean all the uninstalled application';

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
    public function pushFCM($headers,$fields){
        $ch = curl_init();
        curl_setopt( $ch,CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send' );
        curl_setopt( $ch,CURLOPT_POST, true );
        curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
        curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
        curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
        curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode( $fields ) );
        $response = curl_exec($ch );
        curl_close( $ch );
        return json_decode($response, true);
    }

    public function handle()
    {
        /*Check for Manager APP*/
        $managerDevices = AppDeviceInformation::where('active',1)->where('type',"manager")->get();
        $managerFCMs = array();
        foreach($managerDevices as $managerDevice){
            array_push($managerFCMs,$managerDevice->fcm_token);
        }
        $fields = array('registration_ids' => $managerFCMs, 'data'  => array("score"=>"3x1"));
        $headers = array ( 'Authorization: key=' . env('FCM_MANAGER_API_KEY'), 'Content-Type: application/json');
        $response = $this->pushFCM($headers,$fields);
        $managerMismatchSenderId = array();
        $managerRegisterError = array();
        for($i=0; $i<count($managerFCMs); $i++){
            if(array_key_exists("error", $response["results"][$i])){
                if($response["results"][$i]["error"]=="NotRegistered" || $response["results"][$i]["error"]=="InvalidRegistration" ){
                    array_push($managerRegisterError,$managerFCMs[$i]);
                }else if($response["results"][$i]["error"]=="MismatchSenderId"){
                    array_push($managerMismatchSenderId,$managerFCMs[$i]);
                }
            }
        }
        AppDeviceInformation::whereIn('fcm_token',$managerRegisterError)->update(['active'=>0,'uninstalled_at'=>date('Y-m-d H:i:s')]);
        AppDeviceInformation::whereIn('fcm_token',$managerMismatchSenderId)->update(['type'=>"OWNER"]);
        
        /*Check for Owner APP*/
        $ownerDevices = AppDeviceInformation::where('active',1)->where('type',"OWNER")->get();
        $ownerFCMs = array();
        foreach($ownerDevices as $ownerDevice){
            array_push($ownerFCMs,$ownerDevice->fcm_token);
        }
        $fields = array('registration_ids' => $ownerFCMs, 'data'  => array("score"=>"3x1"));
        $headers = array ( 'Authorization: key=' . env('FCM_OWNER_API_KEY'), 'Content-Type: application/json');
        $response = $this->pushFCM($headers,$fields);
        $ownerRegisterError = array();
        for($i=0; $i<count($ownerFCMs); $i++){
            if(array_key_exists("error", $response["results"][$i])){
                if($response["results"][$i]["error"]=="NotRegistered" || $response["results"][$i]["error"]=="InvalidRegistration" || $response["results"][$i]["error"]=="MismatchSenderId"){
                    array_push($ownerRegisterError,$ownerFCMs[$i]);
                }
            }
        }
        AppDeviceInformation::whereIn('fcm_token',$ownerRegisterError)->update(['active'=>0,'uninstalled_at'=>date('Y-m-d H:i:s')]);
    }
}
