<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Attendance;
use Symfony\Component\HttpFoundation\Response;


class APIAttendancesController extends Controller
{
    //
 
    public function index()
    {
        //Get all data Transaction


        $transaction = Attendance::get();

        // Response 

        $response =
        [
            'message' => 'List Attendance',
            'data'=>$transaction
    ];

    return response()->json($response, Response::HTTP_OK);
    }
}
