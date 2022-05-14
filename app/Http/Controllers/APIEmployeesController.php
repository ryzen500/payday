<?php

namespace App\Http\Controllers;
use App\Employee;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class APIEmployeesController extends Controller
{
    //

    public function index()
    {
        //Get all data Transaction


        $transaction = Employee::get();

        // Response 

        $response =
        [
            'message' => 'List Data Employee',
            'data'=>$transaction
    ];

    return response()->json($response, 12);
    }

    public function store(Request $request){
            $input =Employee::create($request->all());
            $response =['message'=>'Membuat API Employee Berhasil',
            'data'=> $input];
        
            return response()->json($response,Response::HTTP_CREATED);
        
    }

    public function show($id)
    {
        //get id
        $transaction = Employee::findOrFail($id);
        $response =['message'=> 'Detail Employee berhasil', 
        'data'=> $transaction
    ];

    return response()->json($response,Response::HTTP_OK);


    }

    public function globas(Request $request)
    {
        $method = $request->method();
        //get id
        if ($request->isMethod('post')) {
            # code...
            $input =Employee::create($request->all());
            $response =['message'=>'Membuat API Employee Berhasil',
            'data'=> $input];
        
            return response()->json($response,Response::HTTP_CREATED);
        }

        if ($request->isMethod('get')) {
            # code...
        
            $transaction = Employee::get();

            // Response 
    
            $response =
            [
                'message' => 'List Data Employee',
                'data'=>$transaction
        ];
    
        return response()->json($response, Response::HTTP_OK);
        }
      




    }

    public function staff_by_manager(Employee $employee,$id){
        $employeess= Employee::find($id);
        $employee_status = $employeess->status_user;
        try{
            if ($id) {
                # code...
                $employee= Employee::with('children')->where('id', $employee_status)->get();
                $response =['message'=>'Menampilkan API Berhasil',
                'data'=> $employee];
            }else {
                # code...
                $response_error =
                [
                    'message' => 'Gagal Menampilkan API'
                            ];
                return response()->json($response_error, Response::HTTP_BAD_REQUEST);
            }
        }catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }

        return response()->json($response,Response::HTTP_OK);
}
}
