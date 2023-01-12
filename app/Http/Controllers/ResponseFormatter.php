<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ResponseFormatter extends Controller
{
    //

    protected static $response = [
        "response_status" => "OK",
        "response_message" => "Berhasil",
        "data" => null
    ];

    public static function responseAPI($status = null, $message = null, $data=null){
        self::$response['response_status'] = $status; 
        self::$response['response_message'] = $message; 
        self::$response['data'] = $data;
        return response()->json(self::$response);

    }

}
