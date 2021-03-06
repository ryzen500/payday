<?php

namespace App\Http\Controllers;

use App\company;
use App\department;
use App\designation;
use App\DocumentType;
use App\Employee;
use App\Imports\UsersImport;
use App\office_shift;
use App\PaidSalary;
use App\QualificationEducationLevel;
use App\QualificationLanguage;
use App\QualificationSkill;
use App\salary;
use App\status;
use App\User;

use DataTables;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Validators\ValidationException;
use Spatie\Permission\Models\Role;
use Throwable;
use Barryvdh\DomPDF\Facade as PDF;

use App\SalaryBasic;


class EmployeeController extends Controller {


	public function index(Request $request)
	{
		$pegawai =Employee::all();

		$logged_user = auth()->user();
        if ($logged_user->can('view-details-employee'))
		{
            $companies = company::select('id', 'company_name')->get();
            $roles = Role::where('id', '!=', 3)->where('is_active',1)->select('id', 'name')->get();

            if (request()->ajax())
            {
                if ($request->company_id && $request->department_id && $request->designation_id && $request->office_shift_id){
                    $employees = Employee::with('user:id,profile_photo,username','company:id,company_name','department:id,department_name', 'designation:id,designation_name','officeShift:id,shift_name')
                                ->where('company_id','=',$request->company_id)
                                ->where('department_id','=',$request->department_id)
                                ->where('designation_id','=',$request->designation_id)
                                ->where('office_shift_id','=',$request->office_shift_id)
                                ->get();
                }elseif ($request->company_id && $request->department_id && $request->designation_id) {
                    $employees = Employee::with('user:id,profile_photo,username','company:id,company_name','department:id,department_name', 'designation:id,designation_name','officeShift:id,shift_name')
                                ->where('company_id','=',$request->company_id)
                                ->where('department_id','=',$request->department_id)
                                ->where('designation_id','=',$request->designation_id)
                                ->get();
                }elseif ($request->company_id && $request->department_id) {
                    $employees = Employee::with('user:id,profile_photo,username','company:id,company_name','department:id,department_name', 'designation:id,designation_name','officeShift:id,shift_name')
                                ->where('company_id','=',$request->company_id)
                                ->where('department_id','=',$request->department_id)
                                ->get();
                }elseif ($request->company_id && $request->office_shift_id) {
                    $employees = Employee::with('user:id,profile_photo,username','company:id,company_name','department:id,department_name', 'designation:id,designation_name','officeShift:id,shift_name')
                                ->where('company_id','=',$request->company_id)
                                ->where('office_shift_id','=',$request->office_shift_id)
                                ->get();
                }elseif ($request->company_id) {
                    $employees = Employee::with('user:id,profile_photo,username','company:id,company_name','department:id,department_name', 'designation:id,designation_name','officeShift:id,shift_name')
                                ->where('company_id','=',$request->company_id)
                                ->get();
                }else {
                    $employees = Employee::with('user:id,profile_photo,username','company:id,company_name','department:id,department_name', 'designation:id,designation_name','officeShift:id,shift_name')
                                ->orderBy('company_id')
                                ->get();
                }

                return datatables()->of($employees)
                    ->setRowId(function ($row)
                    {
                        return $row->id;
                    })
                    ->addColumn('name', function ($row)
                    {
                        if ($row->user->profile_photo)
                        {
                            $url = url("public/uploads/profile_photos/".$row->user->profile_photo);
                            $profile_photo = '<img src="'. $url .'" class="profile-photo md" style="height:35px;width:35px"/>';
                        }
                        else {
                            $url = url("public//logo/avatar.jpg");
                            $profile_photo = '<img src="'. $url .'" class="profile-photo md" style="height:35px;width:35px"/>';
                        }
                        $name  = '<span><a href="employees/' . $row->id .'" class="d-block text-bold" style="color:#24ABF2">'.$row->full_name.'</a></span>';
                        $username = "<span>Username: &nbsp;".($row->user->username ?? '')."</span>";
                        $gender= "<span>Gender: &nbsp;".($row->gender ?? '')."</span>";
                        $shift = "<span>Shift: &nbsp;".($row->officeShift->shift_name ?? '')."</span>";
                        if(config('variable.currency_format') =='suffix'){
							$salary= "<span>Salary: &nbsp;".($row->basic_salary ?? '')." ".config('variable.currency')."</span>";
						}else{
							$salary= "<span>Salary: &nbsp;".config('variable.currency')." ".($row->basic_salary ?? '')."</span>";
						}
                        $payslip_type = "<span>Payslip Type: &nbsp;".($row->payslip_type ?? '')."</span>";

                        return "<div class='d-flex'>
                                        <div class='mr-2'>".$profile_photo."</div>
                                        <div>"
                                            .$name.'</br>'.$username.'</br>'.$gender.'</br>'.$shift.'</br>'.$salary.'</br>'.$payslip_type;
                                        "</div>
                                    </div>";
                    })
                    ->addColumn('company', function ($row)
                    {
                        $company     = "<span class='text-bold'>".strtoupper($row->company->company_name ?? '')."</span>";
                        $department  = "<span>Department : ".($row->department->department_name ?? '')."</span>";
                        $designation = "<span>Designation : ".($row->designation->designation_name ?? '')."</span>";

                        return $company.'</br>'.$department.'</br>'.$designation;
                    })
                    ->addColumn('contacts', function ($row)
                    {
                        $email = "<i class='fa fa-envelope text-muted' title='Email'></i>&nbsp;".$row->email;
                        $contact_no = "<i class='text-muted fa fa-phone' title='Phone'></i>&nbsp;".$row->contact_no;
                        $skype_id = "<i class='text-muted fa fa-skype' title='Skype'></i>&nbsp;".$row->skype_id;
                        $whatsapp_id = "<i class='text-muted fa fa-whatsapp' title='Whats App'></i>&nbsp;".$row->whatsapp_id;

                        return $email.'</br>'.$contact_no.'</br>'.$skype_id.'</br>'.$whatsapp_id;
                    })
                    ->addColumn('action', function ($data)
                    {
                        $button = '';
                        if (auth()->user()->can('view-details-employee'))
                        {
                            $button .= '<a href="employees/' . $data->id . '"  class="edit btn btn-primary btn-sm" data-toggle="tooltip" data-placement="top" title="View Details"><i class="dripicons-preview"></i></button></a>';
                            $button .= '&nbsp;&nbsp;&nbsp;';
                        }
                        if (auth()->user()->can('modify-details-employee'))
                        {
                            $button .= '<button type="button" name="delete" id="' . $data->id . '" class="delete btn btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="Delete"><i class="dripicons-trash"></i></button>';
                            $button .= '&nbsp;&nbsp;&nbsp;';
                            $button .= '<a class="download btn-sm" style="background:#FF7588; color:#fff" title="PDF" href="' . route('employees.pdf', $data->id ) . '"><i class="fa fa-file-pdf-o" aria-hidden="true"></i></a>';
                        }

                        return $button;
                    })
                    ->rawColumns(['name','company','contacts','action',])
                    ->make(true);
            }
            return view('employee.index', compact('companies','roles','pegawai'));
        }
        else
		{
			return response()->json(['success' => __('You are not authorized')]);
		}



	}

	public function updatesCuti(Request $request)
	{
		$pegawai =Employee::all();
		$pegawai_libur =DB::table('employees')
			
		->select(DB::raw('YEAR(joining_date) as dates'))
		->get();

		$value=12;
		foreach ($pegawai_libur as $lalas) {
			# code...
			$cutis = $lalas->dates;

			if ($cutis < date('Y')) {
				# code...
				$employee_cuti = DB::table('employees')
				->update(['total_leave'=> DB::raw($value),'remaining_leave'=> DB::raw($value)]);
			}
		}

		// var_dump($pegawai_libur);
		// if ($pegawai_libur[0]->dates < date('Y')) {
		// 	# code...
		// 	return $pegawai_libur;

		// }

	}


	public function create()
	{
		//
	}

	public function store(Request $request)
	{
		//return response()->json($request->first_name);

		$logged_user = auth()->user();

		if ($logged_user->can('store-details-employee'))
		{
			if (request()->ajax())
			{
				$validator = Validator::make($request->only('first_name', 'last_name', 'email', 'contact_no', 'date_of_birth', 'gender',
					'username', 'role_users_id', 'password', 'password_confirmation', 'company_id', 'department_id', 'designation_id','office_shift_id','attendance_type','joining_date'),
					[
						'first_name' => 'required',
						'last_name' => 'required',
						'email' => 'required|email|unique:users,email',
						'contact_no' => 'required|numeric|unique:users,contact_no',
						'date_of_birth' => 'required',
						'username' => 'required|unique:users,username',
						'role_users_id' => 'required',
						'password' => 'required|min:4|confirmed',
						'company_id' => 'required',
						'department_id' => 'required',
						'designation_id' => 'required',
						'office_shift_id' => 'required',
						'attendance_type' => 'required',
						'joining_date' => 'required',
						'profile_photo' => 'nullable|image|max:10240|mimes:jpeg,png,jpg,gif',
					]
				);

				if ($validator->fails())
				{
					return response()->json(['errors' => $validator->errors()->all()]);
				}

				$data = [];
				$data['first_name'] = $request->first_name;
				$data['last_name'] = $request->last_name;
				$data['date_of_birth'] = $request->date_of_birth;
				$data['gender'] = $request->gender;
				$data['department_id'] = $request->department_id;
				$data['company_id'] = $request->company_id;
				$data ['designation_id'] = $request->designation_id;
				$data ['office_shift_id'] = $request->office_shift_id;

				$data['email'] = strtolower(trim($request->email));
				$data ['role_users_id'] = $request->role_users_id;
				$data['contact_no'] = $request->contact_no;
				$data['attendance_type'] = $request->attendance_type; //new
				$data['joining_date']    = $request->joining_date; //new
				// $data['remaining_leave']    = $request->joining_date; //new

				$data['remaining_leave']    = 12; //new

				$data['total_leave']    = 12; //new

				$data['is_active'] = 1;


				$user = [];
				$user['first_name'] = $request->first_name;
				$user['last_name'] = $request->last_name;
				$user['username'] = strtolower(trim($request->username));
				$user['email'] = strtolower(trim($request->email));
				$user['password'] = bcrypt($request->password);
				$user ['role_users_id'] = $request->role_users_id;
				$user['contact_no'] = $request->contact_no;
				$user['is_active'] = 1;

				$photo = $request->profile_photo;
				$file_name = null;

				if (isset($photo))
				{
					$new_user = $request->username;
					if ($photo->isValid())
					{
						$file_name = preg_replace('/\s+/', '', $new_user) . '_' . time() . '.' . $photo->getClientOriginalExtension();
						$photo->storeAs('profile_photos', $file_name);
						$user['profile_photo'] = $file_name;
					}
				}

				DB::beginTransaction();
				try
				{
					$created_user = User::create($user);
					// $created_user->syncRoles(5);
					$created_user->syncRoles($request->role_users_id); //new

					$data['id'] = $created_user->id;

					employee::create($data);

					DB::commit();
				} catch (Exception $e)
				{
					DB::rollback();

					return response()->json(['error' => $e->getMessage()]);
				} catch (Throwable $e)
				{
					DB::rollback();

					return response()->json(['error' => $e->getMessage()]);
				}

				return response()->json(['success' => __('Data Added successfully.')]);
			}
		}

		return response()->json(['success' => __('You are not authorized')]);
	}


	


	



	public function show(Employee $employee)
	{
		if (auth()->user()->can('view-details-employee'))
		{
			$companies = Company::select('id', 'company_name')->get();
                        

                        $salary_detils = array();

			$basic_salary = DB::table('salary_basics')
						->where('employee_id', $employee->id)			
                                                ->take(1)		
						->get();

                        $total = 0;
			
			foreach($basic_salary as $basic_salarys) {
				$total += $basic_salarys->basic_salary;
				array_push($salary_detils, (object) array('salary' => 'Basic', 'title' => 'Basic Salary', 'amount' => 'Rp. '. number_format($basic_salarys->basic_salary, 0, ',', '.')));
			}

			$allowance_salary = DB::table('salary_allowances')
						->where('employee_id', $employee->id)
						->where('first_date','=',date('Y-m-01'))
						->groupBy('first_date')

						->get();
			foreach($allowance_salary as $allowance_salarys) {
				$total += $allowance_salarys->allowance_amount;
				array_push($salary_detils, (object) array('salary' => 'Allowance', 'title' => $allowance_salarys->allowance_title, 'amount' => 'Rp. '. number_format($allowance_salarys->allowance_amount,0,',','.')));
			}

			$salary_commissions = DB::table('salary_commissions')
						->where('employee_id', $employee->id)
						->where('first_date','=',date('Y-m-01'))
						->groupBy('first_date')

						->get();

			foreach($salary_commissions as $salary_commission) {
				$total += $salary_commission->commission_amount;
				array_push($salary_detils, (object) array('salary' => 'commissions', 'title' => $salary_commission->commission_title, 'amount' => 'Rp. '. number_format($salary_commission->commission_amount,0,',','.')));
			}

			$salary_deductions = DB::table('salary_deductions')
						->where('employee_id', $employee->id)
						->where('first_date','=',date('Y-m-01'))
						->groupBy('first_date')

						->get();

			foreach($salary_deductions as $salary_deduction) {
				$total += $salary_deduction->deduction_amount;
				array_push($salary_detils, (object) array('salary' => 'Commissions', 'title' => $salary_deduction->deduction_title, 'amount' => 'Rp. '. number_format($salary_deduction->deduction_amount,0,',','.')));
			}
			
			$salary_loans = DB::table('salary_loans')
						->where('employee_id', $employee->id)
						->where('first_date','=',date('Y-m-01'))
						->groupBy('first_date')

						->get();

			foreach($salary_loans as $salary_loan) {
				$total += $salary_loan->loan_amount;
				array_push($salary_detils, (object) array('salary' => 'Loan', 'title' => $salary_loan->loan_title, 'amount' => 'Rp. '.number_format($salary_loan->loan_amount,0,',','.')));
			}

			$salary_other_payments = DB::table('salary_other_payments')
						->where('employee_id', $employee->id)
						->where('first_date','=',date('Y-m-01'))
						->groupBy('first_date')

						->get();
			
			foreach($salary_other_payments as $salary_other_payment) {
				$total += $salary_other_payment->other_payment_amount;
				array_push($salary_detils, (object) array('salary' => 'Other Payment', 'title' => $salary_other_payment->other_payment_title, 'amount' => 'Rp. '. number_format($salary_other_payment->other_payment_amount,0,',','.')));
			}

			$dates ='ya';
			$salary_overtimes = DB::table('salary_overtimes')
						->where('employee_id', $employee->id)
						->where('first_date','=',date('Y-m-01'))
						->where('calculate_leave',$dates)
						->groupBy('first_date')
						->get();

				// dd($salary_overtimes);

			foreach($salary_overtimes as $salary_overtime) {
				$total += $salary_overtime->overtime_amount;
				array_push($salary_detils, (object) array('salary' => 'Salary Overtime', 'title' => $salary_overtime->overtime_title, 'amount' => 'Rp. '. number_format($salary_overtime->overtime_amount,0,',','.')));
			}	
			
			array_push($salary_detils, (object) array('salary' => '', 'title' => 'Total :', 'amount' => 'Rp. '. number_format($total, 0, ',', '.')));

						
			$departments = department::select('id', 'department_name')
				->where('company_id', $employee->company_id)
				->get();

			$designations = designation::select('id', 'designation_name')
				->where('department_id', $employee->department_id)
				->get();

			$office_shifts = office_shift::select('id', 'shift_name')
				->where('company_id', $employee->company_id)
				->get();

			$statuses = status::select('id', 'status_title')->get();
			// $roles = Role::select('id', 'name')->get();
			$countries = DB::table('countries')->select('id', 'name')->get();
			$employess = DB::table('employees')->select('id', 'first_name')->get();

			$document_types = DocumentType::select('id', 'document_type')->get();

			$education_levels = QualificationEducationLevel::select('id', 'name')->get();
			$language_skills = QualificationLanguage::select('id', 'name')->get();
			$general_skills = QualificationSkill::select('id', 'name')->get();

			$roles = Role::where('id', '!=', 3)->where('is_active',1)->select('id', 'name')->get(); //--new--

			$pegawai = Employee::all();

			$pegawai_libur =DB::table('employees')
			
			->select(DB::raw('YEAR(joining_date) as dates'))
			->where('id',$employee->id)
			->first();
			

			// var_dump($pegawai_libur);


			return view('employee.dashboard', compact('employee', 'countries', 'companies',
				'departments', 'designations', 'statuses', 'office_shifts', 'document_types', 'education_levels', 'pegawai','language_skills', 'general_skills','roles', 'salary_detils','employess','pegawai_libur'));
		}else
		{
			return response()->json(['success' => __('You are not authorized')]);
		}
	}


	public function details(Employee $employee) {
		
		$logged_user = auth()->user();
		$employee_id = $employee->id;

			$pegawai = Employee::all();
        $employeess= Employee::find($employee_id);

		$employee_status = $employeess->status_user;
		
		$departments = department::select('id', 'department_name')
		->where('company_id', $employee->company_id)
		->get();


		if ($logged_user->can('view-details-employee')||$logged_user->id==$employee->id)
		{
			// if (request()->ajax())
			// {
				 return datatables()->of(Employee::with('children')->where('id', $employee_status)->with(['department'])->get())
					->setRowId(function ($manager_data)
					{
						return $manager_data->id;
					})
					// ->	addColumn('action', 'manager_data.action') 
					
					-> addColumn('action', function ($data) use ($logged_user,$employee)
					{
						if ($logged_user->can('modify-details-employee')||$logged_user->id==$employee)
						{
							// $button = '<button type="button" name="edit" id="' . $data->id . '" class="employees_edit btn btn-primary btn-sm"><i class="dripicons-pencil"></i></button>';
							// $button .= '&nbsp;&nbsp;';
							$button = '<button type="button" name="tombols" href="" id="tombols" class="employees btn btn-danger btn-sm"><i class="dripicons-trash"></i></button>';

							return $button;
						} else
						{
							return '';
						}
					})
					->rawColumns(['action'])
					->addIndexColumn()
					->make(true);

					return view('manager_data.tampil', compact('departments','pegawai'));
				// return DataTables::of(Employee::all())->make(true);

				// return datatables()->of(Employee::where('status_user', $employee_id))->make(true);

				// return Datatables::of(Employee::where('status_user',$employee_id)->get())->make(true);
			
			// }
		}
	}



	public function destroy($id)
	{
		
		if (!env('USER_VERIFIED'))
		{
			return response()->json(['error' => 'This feature is disabled for demo!']);
		}
		$logged_user = auth()->user();

		if ($logged_user->can('modify-details-employee'))
		{
			DB::beginTransaction();
			try
			{
				Employee::whereId($id)->delete();
				$this->unlink($id);
				User::whereId($id)->delete();

				DB::commit();
			} catch (Exception $e)
			{
				DB::rollback();

				return response()->json(['error' => $e->getMessage()]);
			} catch (Throwable $e)
			{
				DB::rollback();

				return response()->json(['error' => $e->getMessage()]);
			}

			return response()->json(['success' => __('Data is successfully deleted')]);
		}

		return response()->json(['success' => __('You are not authorized')]);
	}

	public function unlink($employee)
	{

		$user = User::findOrFail($employee);
		$file_path = $user->profile_photo;

		if ($file_path)
		{
			$file_path = public_path('uploads/profile_photos/' . $file_path);
			if (file_exists($file_path))
			{
				unlink($file_path);
			}
		}
	}

	public function delete_by_selection(Request $request)
	{
		if (!env('USER_VERIFIED'))
		{
			return response()->json(['error' => 'This feature is disabled for demo!']);
		}
		$logged_user = auth()->user();

		if ($logged_user->can('modify-details-employee'))
		{
			$employee_id = $request['employeeIdArray'];

			$user = User::whereIn('id', $employee_id);

			if ($user->delete())
			{
				return response()->json(['success' => __('Data is successfully deleted')]);
			}
		}

		
		return response()->json(['success' => __('You are not authorized')]);
	}

	public function infoUpdate(Request $request, $employee)
	{
		// return response()->json($request->attendance_type);

		$logged_user = auth()->user();

		if ($logged_user->can('modify-details-employee'))
		{
			if (request()->ajax())
			{
				$validator = Validator::make($request->only('first_name', 'last_name', 'email', 'contact_no', 'date_of_birth', 'gender',
					'username', 'role_users_id', 'company_id', 'department_id', 'designation_id', 'office_shift_id', 'location_id', 'status_id',
					'marital_status', 'joining_date', 'exit_date', 'permission_role_id', 'address', 'city', 'state', 'country', 'zip_code','attendance_type','total_leave'
				),
					[
						'first_name' => 'required',
						'last_name' => 'required',
						'email' => 'required|email|unique:users,email,' . $employee,
						'contact_no' => 'required|numeric|unique:users,contact_no,' . $employee,
						'date_of_birth' => 'required',
						// 'username' => 'required|unique:users,username,' . $employee,
						// 'role_users_id' => 'required',
						'attendance_type' => 'required',
                                                'status_id' => 'required',
						'total_leave' => 'numeric|min:0',
						'joining_date' => 'required',
					]
				);


				if ($validator->fails())
				{
					return response()->json(['errors' => $validator->errors()->all()]);
				}

				$data = [];
				$data['first_name'] = $request->first_name;
				$data['last_name'] = $request->last_name;
				$data['status_user'] = $request->status_user;

				$data['date_of_birth'] = $request->date_of_birth;
				$data['gender'] = $request->gender;
				$data['department_id'] = $request->department_id;
				$data['company_id'] = $request->company_id;
				$data ['designation_id'] = $request->designation_id;
				$data ['office_shift_id'] = $request->office_shift_id;
				$data['status_id'] = $request->status_id;
				$data ['marital_status'] = $request->marital_status;
				if ($request->joining_date)
				{
					$data ['joining_date'] = $request->joining_date;
				}
				if ($request->exit_date)
				{
					$data['exit_date'] = $request->exit_date;
				}
				// $data ['address'] = $request->address;
				// $data ['city'] = $request->city;
				// $data['state'] = $request->state;
				// $data ['country'] = $request->country;
				// $data ['zip_code'] = $request->zip_code;


				$data['email'] = strtolower(trim($request->email));
				$data ['role_users_id'] = $request->role_users_id;
				$data['contact_no'] = $request->contact_no;
				$data['attendance_type'] = $request->attendance_type;
				$data['is_active'] = 1;

                //                 $data['nik'] = $request->nik;
				// $data['bpjs'] = $request->bpjs;
				// $data['npwp'] = $request->npwp;
				// $data['asuransi'] = $request->asuransi;

				//Leave Calculation
				$employee_leave_info = Employee::find($employee);
				if ($employee_leave_info->total_leave==0) {
					$data['total_leave'] = $request->total_leave;
					
					$data['remaining_leave'] = $request->total_leave;
				}
				elseif ($request->total_leave > $employee_leave_info->total_leave) {
					$data['total_leave'] = $request->total_leave;
					$data['remaining_leave'] = $request->remaining_leave + ($request->total_leave - $employee_leave_info->total_leave);
				}
				elseif ($request->total_leave < $employee_leave_info->total_leave) {
					$data['total_leave'] = $request->total_leave;
					$data['remaining_leave'] = $request->remaining_leave - ($employee_leave_info->total_leave - $request->total_leave);
				}else {
					$data['total_leave'] = $request->total_leave;
					$data['remaining_leave'] = $employee_leave_info->remaining_leave;
				}
				//return response()->json($data['remaining_leave']);



				$user = [];
				$user['first_name'] = $request->first_name;
				$user['last_name'] = $request->last_name;
				$user['username'] = strtolower(trim($request->username));
				$user['email'] = strtolower(trim($request->email));
				//$user['password'] = bcrypt($request->password);
				$user ['role_users_id'] = $request->role_users_id;
				$user['contact_no'] = $request->contact_no;
				$user['is_active'] = 1;

				DB::beginTransaction();
				try
				{
					User::whereId($employee)->update($user);
					
					employee::find($employee)->update($data);

					$usertest = User::find($employee); //--new--
					$usertest->syncRoles($data['role_users_id']); //--new--

					DB::commit();
				} catch (Exception $e)
				{
					DB::rollback();

					return response()->json(['error' => $e->getMessage()]);
				} catch (Throwable $e)
				{
					DB::rollback();

					return response()->json(['error' => $e->getMessage()]);
				}

				return response()->json(['success' => __('Data Added successfully.'), 'remaining_leave' => $data['remaining_leave']]);
			}
		}

		return response()->json(['success' => __('You are not authorized')]);
	}

	public function statusUpdate(Request $request, $employee)
	{
		// return response()->json($request->attendance_type);

		$logged_user = auth()->user();

		if ($logged_user->can('modify-details-employee'))
		{
			if (request()->ajax())
			{
				// $validator = Validator::make($request->only('first_name', 'last_name', 'email', 'contact_no', 'date_of_birth', 'gender',
				// 	'username', 'role_users_id', 'company_id', 'department_id', 'designation_id', 'office_shift_id', 'location_id', 'status_id',
				// 	'marital_status', 'joining_date', 'exit_date', 'permission_role_id', 'address', 'city', 'state', 'country', 'zip_code','attendance_type','total_leave'
				// ),
				// 	[
				// 		'first_name' => 'required',
				// 		'last_name' => 'required',
				// 		'email' => 'required|email|unique:users,email,' . $employee,
				// 		'contact_no' => 'required|numeric|unique:users,contact_no,' . $employee,
				// 		'date_of_birth' => 'required',
				// 		// 'username' => 'required|unique:users,username,' . $employee,
				// 		// 'role_users_id' => 'required',
				// 		'attendance_type' => 'required',
                //                                 'status_id' => 'required',
				// 		'total_leave' => 'numeric|min:0',
				// 		'joining_date' => 'required',
				// 	]
				// );


				// if ($validator->fails())
				// {
				// 	return response()->json(['errors' => $validator->errors()->all()]);
				// }

				$data = [];
				$data['status_user']= 0;
				$data['remaining_leave']=$request->remaining_leave;
				employee::find($employee)->update($data);


				// $data['first_name'] = $request->first_name;
				// $data['last_name'] = $request->last_name;
				// // $data['status_user'] = $request->status_user;
				// $data['status_user'] = 0;


				// $data['date_of_birth'] = $request->date_of_birth;
				// $data['gender'] = $request->gender;
				// $data['department_id'] = $request->department_id;
				// $data['company_id'] = $request->company_id;
				// $data ['designation_id'] = $request->designation_id;
				// $data ['office_shift_id'] = $request->office_shift_id;
				// $data['status_id'] = $request->status_id;
				// $data ['marital_status'] = $request->marital_status;
				// if ($request->joining_date)
				// {
				// 	$data ['joining_date'] = $request->joining_date;
				// }
				// if ($request->exit_date)
				// {
				// 	$data['exit_date'] = $request->exit_date;
				// }
				// // $data ['address'] = $request->address;
				// // $data ['city'] = $request->city;
				// // $data['state'] = $request->state;
				// // $data ['country'] = $request->country;
				// // $data ['zip_code'] = $request->zip_code;


				// $data['email'] = strtolower(trim($request->email));
				// $data ['role_users_id'] = $request->role_users_id;
				// $data['contact_no'] = $request->contact_no;
				// $data['attendance_type'] = $request->attendance_type;
				// $data['is_active'] = 1;

                // //                 $data['nik'] = $request->nik;
				// // $data['bpjs'] = $request->bpjs;
				// // $data['npwp'] = $request->npwp;
				// // $data['asuransi'] = $request->asuransi;

				// //Leave Calculation
				// $employee_leave_info = Employee::find($employee);
				// if ($employee_leave_info->total_leave==0) {
				// 	$data['total_leave'] = $request->total_leave;
				// 	$data['remaining_leave'] = $request->total_leave;
				// }
				// elseif ($request->total_leave > $employee_leave_info->total_leave) {
				// 	$data['total_leave'] = $request->total_leave;
				// 	$data['remaining_leave'] = $request->remaining_leave + ($request->total_leave - $employee_leave_info->total_leave);
				// }
				// elseif ($request->total_leave < $employee_leave_info->total_leave) {
				// 	$data['total_leave'] = $request->total_leave;
				// 	$data['remaining_leave'] = $request->remaining_leave - ($employee_leave_info->total_leave - $request->total_leave);
				// }else {
				// 	$data['total_leave'] = $request->total_leave;
				// 	$data['remaining_leave'] = $employee_leave_info->remaining_leave;
				// }
				// //return response()->json($data['remaining_leave']);



				// $user = [];
				// $user['first_name'] = $request->first_name;
				// $user['last_name'] = $request->last_name;
				// $user['username'] = strtolower(trim($request->username));
				// $user['email'] = strtolower(trim($request->email));
				// //$user['password'] = bcrypt($request->password);
				// $user ['role_users_id'] = $request->role_users_id;
				// $user['contact_no'] = $request->contact_no;
				// $user['is_active'] = 1;

				// DB::beginTransaction();
				// try
				// {
				// 	User::whereId($employee)->update($user);
					
				// 	employee::find($employee)->update($data['status_user']);

				// 	$usertest = User::find($employee); //--new--
				// 	$usertest->syncRoles($data['role_users_id']); //--new--

				// 	DB::commit();
				// } catch (Exception $e)
				// {
				// 	DB::rollback();

				// 	return response()->json(['error' => $e->getMessage()]);
				// } catch (Throwable $e)
				// {
				// 	DB::rollback();

				// 	return response()->json(['error' => $e->getMessage()]);
				// }

				return response()->json(['success' => __('Data Added successfully.'), 'remaining_leave' => $data['remaining_leave']]);
			}
		}

		return response()->json(['success' => __('You are not authorized')]);
	}

	
	public function socialProfileShow(Employee $employee)
	{
		return view('employee.social_profile.index', compact('employee'));
	}

	public function storeSocialInfo(Request $request, $employee)
	{
		$logged_user = auth()->user();

		if ($logged_user->can('modify-details-employee') || $logged_user->id == $employee)
		{
			$data = [];
			$data['fb_id'] = $request->fb_id;
			$data['twitter_id'] = $request->twitter_id;
			$data['linkedIn_id'] = $request->linkedIn_id;
			$data['whatsapp_id'] = $request->whatsapp_id;
			$data ['skype_id'] = $request->skype_id;

			Employee::whereId($employee)->update($data);

			return response()->json(['success' => __('Data is successfully updated')]);

		}

		return response()->json(['success' => __('You are not authorized')]);

	}

	public function indexProfilePicture(Employee $employee)
	{
		$logged_user = auth()->user();

		if ($logged_user->can('modify-details-employee'))
		{
			return view('employee.profile_picture.index', compact('employee'));
		}

		return response()->json(['success' => __('You are not authorized')]);
	}

	public function storeProfilePicture(Request $request, $employee)
	{
		$logged_user = auth()->user();

		if ($logged_user->can('modify-details-employee') || $logged_user->id == $employee)
		{

			$data = [];
			$photo = $request->profile_photo;
			$file_name = null;

			if (isset($photo))
			{
				$new_user = $request->employee_username;
				if ($photo->isValid())
				{
					$file_name = preg_replace('/\s+/', '', $new_user) . '_' . time() . '.' . $photo->getClientOriginalExtension();
					$photo->storeAs('profile_photos', $file_name);
					$data['profile_photo'] = $file_name;
				}
			}

			$this->unlink($employee);

			User::whereId($employee)->update($data);

			return response()->json(['success' => 'Data is successfully updated', 'profile_picture' => $file_name]);

		}

		return response()->json(['success' => __('You are not authorized')]);
	}

	public function setSalary(Employee $employee)
	{
		$logged_user = auth()->user();
		if ($logged_user->can('modify-details-employee'))
		{
			return view('employee.salary.index', compact('employee'));
		}

		return response()->json(['success' => __('You are not authorized')]);
	}

	public function storeSalary(Request $request, $employee)
	{
		$logged_user = auth()->user();

		if ($logged_user->can('modify-details-employee'))
		{

			$validator = Validator::make($request->only('payslip_type', 'basic_salary'
			),
				[
					'basic_salary' => 'required|numeric',
					'payslip_type' => 'required',
				]
			);


			if ($validator->fails())
			{
				return response()->json(['errors' => $validator->errors()->all()]);
			}


			DB::beginTransaction();
			try
			{
				Employee::updateOrCreate(['id' => $employee], [
					'payslip_type' => $request->payslip_type,
					'basic_salary' => $request->basic_salary]);
				DB::commit();
			} catch (Exception $e)
			{
				DB::rollback();

				return response()->json(['error' => $e->getMessage()]);
			} catch (Throwable $e)
			{
				DB::rollback();

				return response()->json(['error' => $e->getMessage()]);
			}

			return response()->json(['success' => __('Data Added successfully.')]);
		}

		return response()->json(['error' => __('You are not authorized')]);
	}

    public function employeesPensionUpdate(Request $request, $employee)
    {
        //return response()->json('ok');
        $logged_user = auth()->user();

		if ($logged_user->can('modify-details-employee')){

            $validator = Validator::make($request->only('pension_type', 'pension_amount'),[
					'pension_type'  => 'required',
					'pension_amount'=> 'required|numeric',
				]
			);


			if ($validator->fails()){
				return response()->json(['errors' => $validator->errors()->all()]);
			}

			DB::beginTransaction();
			try
			{
				Employee::updateOrCreate(['id' => $employee], [
					'pension_type' => $request->pension_type,
					'pension_amount' => $request->pension_amount]);
				DB::commit();
			} catch (Exception $e)
			{
				DB::rollback();

				return response()->json(['error' => $e->getMessage()]);
			} catch (Throwable $e)
			{
				DB::rollback();

				return response()->json(['error' => $e->getMessage()]);
			}

			return response()->json(['success' => __('Data Added successfully.')]);
        }
        return response()->json(['success' => __('You are not authorized')]);

    }

	public function import()
	{
		if (auth()->user()->can('import-employee'))
		{
			return view('employee.import');
		}

		return abort(404, __('You are not authorized'));
	}

	public
	function importPost()
	{
		if (!env('USER_VERIFIED'))
		{
			$this->setSuccessMessage(__('This feature is disabled for demo!'));
		}
		try
		{
			Excel::queueImport(new UsersImport(), request()->file('file'));
		} catch (ValidationException $e)
		{
			$failures = $e->failures();

			return view('employee.importError', compact('failures'));
		}

		$this->setSuccessMessage(__('Imported Successfully'));

		return back();

	}

	public function employeePDF($id)
	{
		$employee = Employee::with('user:id,profile_photo,username','company:id,company_name','department:id,department_name', 'designation:id,designation_name','officeShift:id,shift_name','role:id,name')
							->where('id',$id)
							->first()
							->toArray();

		PDF::setOptions(['dpi' => 10, 'defaultFont' => 'sans-serif','tempDir'=>storage_path('temp')]);
        $pdf = PDF::loadView('employee.pdf',$employee);
        return $pdf->stream();
	}

}
