<section>
    <span id="immigration_general_result"></span>
    <button type="button" href="javascript:void(0)" onclick="Add()" class="btn btn-info "  id="tombol-tambah"  data-toggle="modal" data-target="#exampleModal" data-whatever="Tester">
      <i class="dripicons-pencil"></i> Manager Data </button>
    <div class="table-responsive row">
      <div id="immigration-table_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
        <div class="row">
          {{-- <div class="col-sm-12 col-md-6">
            <div class="dataTables_length" id="immigration-table_length">
              <label>
                <select name="immigration-table_length" aria-controls="immigration-table" class="form-control form-control-sm">
                  <option value="10">10</option>
                  <option value="25">25</option>
                  <option value="50">50</option>
                  <option value="-1">All</option>
                </select> records per page </label>
            </div>
          </div> --}}
          {{-- <div class="col-sm-12 col-md-6">
            <div id="immigration-table_filter" class="dataTables_filter">
              <label>Search <input type="search" class="form-control" placeholder="" aria-controls="immigration-table">
              </label>
            </div>
          </div> --}}
        </div>
        <div class="row">
          <div class="col-sm-12">
            <table id="manager-table" class="table no-footer dataTable dtr-inline" role="grid" aria-describedby="immigration-table_info" style="width: 870px;">
              <thead>
                <tr role="row">
                    <th class="sorting" tabindex="0" aria-controls="immigration-table" rowspan="1" colspan="1" style="width: 97px;" aria-label="Issue Date: activate to sort column ascending">First Name</th>
                    <th class="sorting" tabindex="0" aria-controls="immigration-table" rowspan="1" colspan="1" style="width: 97px;" aria-label="Issue Date: activate to sort column ascending">Last Name</th>
                  <th class="sorting" tabindex="0" aria-controls="immigration-table" rowspan="1" colspan="1" style="width: 120px;" aria-label="Expired Date: activate to sort column ascending">Email</th>
                  <th class="sorting" tabindex="0" aria-controls="immigration-table" rowspan="1" colspan="1" style="width: 97px;" aria-label="Issue By: activate to sort column ascending">Gender</th>
                  <th class="sorting" tabindex="0" aria-controls="immigration-table" rowspan="1" colspan="1" style="width: 116px;" aria-label="Review Date: activate to sort column ascending">Department</th>
                  <th class="not-exported sorting_disabled" tabindex="0" aria-controls="immigration-table" rowspan="1" colspan="1" style="width: 90px;" aria-label="action">action</th>
                </tr>
              </thead>
            </table>
            
        </div>
      </div>
    </div>

    <div class="modal fade" id="tambah-edit-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="modal-judul"></h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close" >
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form id="form-tambah-edit" name="form-tambah-edit" class="form-horizontal">
                @csrf
                <input type="hidden" name="_token" value="<?= csrf_token(); ?>">
                
                <div class="form-group">
                  <input type="hidden" name="id" id="id">
                  <label for="recipient-name" class="col-form-label">First Name :</label>
                  <input type="text" class="form-control" name="first_name" id="first_name" value="{{$employee->first_name}}">
                </div>

                <div class="form-group">
                    <label for="recipient-name" class="col-form-label">Last Name :</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" value="{{$employee->last_name}}">
                  </div>


                  <div class="form-group">
                    <label for="recipient-name" class="col-form-label">Email :</label>
                    <input type="text" class="form-control" id="email" name="email" value="{{$employee->email}}">
                  </div>

                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="contact_no" name="contact_no" value="{{$employee->contact_no}}">
                  </div>

                  
                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="date_of_birth" name="date_of_birth" value="{{$employee->date_of_birth}}">
                  </div>
                  

                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">username :</label> --}}
                    <input type="hidden" class="form-control" id="username" name="username" value="{{$employee->user->username}}">
                  </div>
                  

                  
                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="status_id" name="status_id" value="{{$employee->status_id}}">
                  </div>
                  
                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="role_users_id" name="role_users_id" value="{{$employee->role_users_id}}">
                  </div>

                  
                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="attendance_type" name="attendance_type" value="{{$employee->attendance_type}}">
                  </div>


                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="total_leave" name="total_leave" value="{{$employee->total_leave}}">
                  </div>


                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="joining_date" name="joining_date" value="{{$employee->joining_date}}">
                  </div>


                  <label for="recipient-name" class="col-form-label">Data Manager :</label>
                  <div class="form-group">
                    <select type="text" class="selectpicker form-control designation"   
                    data-designation_name="designation_name"
                     id="status_user" name="status_user">
                      @if($employee->status_user == null ||$employee->status_user == 1)
                      <option value="--">--</option>
                      @foreach($pegawai as $pegawais)
                      <option value="{{$pegawais->id}}">{{$pegawais->first_name}}</option>
                     @endforeach
                      @endif

                      @if($employee->role_users_id == 4 && $employee->status_user == null)
                      <option value="{{$employee->id}}">{{$employee->first_name}}</option>

                      @endif


                      @if($employee->status_user != 0)
                      <option value="{{$employee->parent->id}}">{{$employee->parent->first_name}}</option>
                      @foreach($pegawai as $pegawais)
                      <option value="{{$pegawais->id}}">{{$pegawais->first_name}}</option>
                      @endforeach
                      @endif
                   
                    </select>
                  </div>


                  <label for="recipient-name" class="col-form-label">Department :</label>
                  <div class="form-group">
                    <select type="text" class="selectpicker form-control designation"     
                    data-designation_name="designation_name"
                     id="department_id" name="department_id">
                      @if($employee->department_id == null)
                      <option value="--">--</option>
                      @foreach($departments as $department)
                      <option value="{{$department->id}}">{{$department->department_name}}</option>
                  @endforeach
                      @endif

                      @if($employee->department_id == $employee->department_id)
                      <option value="{{$employee->department_id}}">{{$employee->department->department_name}}</option>
                      @foreach($departments as $department)
                      <option value="{{$department->id}}">{{$department->department_name}}</option>
                  @endforeach
                      @endif
                   
                    </select>
                  </div>

              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary" id="tombol-simpan" onclick="location.reload()">Save</button>
            </div>
          </div>
        </div>
      </div>



      <div class="modal fade" id="tambah-edit-modals" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="modal-judul"></h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close" >
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form id="tambah-edit-modals" name="tambah-edit-modals" class="form-horizontal">
                @csrf
                <input type="hidden" name="_token" value="<?= csrf_token(); ?>">
                
                <div class="form-group">
                  <input type="hidden" name="id" id="id">
                  <label for="recipient-name" class="col-form-label">First Name :</label>
                  <input type="text" class="form-control" name="first_name" id="first_name" value="{{$employee->first_name}}">
                </div>

                <div class="form-group">
                    <label for="recipient-name" class="col-form-label">Last Name :</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" value="{{$employee->last_name}}">
                  </div>


                  <div class="form-group">
                    <label for="recipient-name" class="col-form-label">Email :</label>
                    <input type="text" class="form-control" id="email" name="email" value="{{$employee->email}}">
                  </div>

                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="contact_no" name="contact_no" value="{{$employee->contact_no}}">
                  </div>

                  
                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="date_of_birth" name="date_of_birth" value="{{$employee->date_of_birth}}">
                  </div>
                  

                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">username :</label> --}}
                    <input type="hidden" class="form-control" id="username" name="username" value="{{$employee->user->username}}">
                  </div>
                  

                  
                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="status_id" name="status_id" value="{{$employee->status_id}}">
                  </div>
                  
                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="role_users_id" name="role_users_id" value="{{$employee->role_users_id}}">
                  </div>

                  
                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="attendance_type" name="attendance_type" value="{{$employee->attendance_type}}">
                  </div>


                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="total_leave" name="total_leave" value="{{$employee->total_leave}}">
                  </div>


                  <div class="form-group">
                    {{-- <label for="recipient-name" class="col-form-label">Email :</label> --}}
                    <input type="hidden" class="form-control" id="joining_date" name="joining_date" value="{{$employee->joining_date}}">
                  </div>


                  <label for="recipient-name" class="col-form-label">Data Manager :</label>
                  <div class="form-group">
                    <select type="text" class="selectpicker form-control designation"   
                    data-designation_name="designation_name"
                     id="status_user" name="status_user">
                      @if($employee->status_user == null ||$employee->status_user == 0)
                      <option value="--">--</option>
                      @foreach($pegawai as $pegawais)
                      <option value="{{$pegawais->id}}">{{$pegawais->first_name}}</option>
                     @endforeach
                      @endif

                      @if($employee->role_users_id == 4 && $employee->status_user == null)
                      <option value="{{$employee->id}}">{{$employee->first_name}}</option>

                      @endif


                      @if($employee->status_user != 0)
                      <option value="{{$employee->parent->id}}">{{$employee->parent->first_name}}</option>
                      @foreach($pegawai as $pegawais)
                      <option value="{{$pegawais->id}}">{{$pegawais->first_name}}</option>
                      @endforeach
                      @endif
                   
                    </select>
                  </div>


                  <label for="recipient-name" class="col-form-label">Department :</label>
                  <div class="form-group">
                    <select type="text" class="selectpicker form-control designation"     
                    data-designation_name="designation_name"
                     id="department_id" name="department_id">
                      @if($employee->department_id == null)
                      <option value="--">--</option>
                      @foreach($departments as $department)
                      <option value="{{$department->id}}">{{$department->department_name}}</option>
                  @endforeach
                      @endif

                      @if($employee->department_id == $employee->department_id)
                      <option value="{{$employee->department_id}}">{{$employee->department->department_name}}</option>
                      @foreach($departments as $department)
                      <option value="{{$department->id}}">{{$department->department_name}}</option>
                  @endforeach
                      @endif
                   
                    </select>
                  </div>

              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary" id="tombol-simpan" onclick="location.reload()">Save</button>
            </div>
          </div>
        </div>
      </div>

      <div class="modal fade confirmModal" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title">{{trans('file.Confirmation')}}</h2>
                    <button type="button" class="bank-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <h4 align="center" style="margin:0;">{{__('Are you sure you want to remove this data?')}}</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" name="tombol-hapus" id="tombol-hapus"  class="btn btn-danger bank-ok">{{trans('file.OK')}}</button>
                    <button type="button" class="bank-close btn-default" data-dismiss="modal">{{trans('file.Cancel')}}</button>
                </div>
            </div>
        </div>
    </div>

  </section>
  <script>
      $(document).ready(function () {
          $.ajaxSetup({
              headers:{
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
              }
          });

          $('#manager-table').DataTable({
              processing:true,
              serverSide:true,
              "bDestroy": true,
              ajax: "{{ route('employees.details',$employee->id) }}",
              columns:[
                
                  {data:'first_name' , name:'first_name'},
                  {data:'last_name' , name:'last_name'},
                  {data:'email' , name:'email'},
                  {data:'gender' , name:'gender'},
                  {data:'department.department_name' , name:'department.department_name'},
                  {data: 'action', name: 'action', orderable: false},

              ],
              order: [[0, 'desc']]
          });
      });    
      function Add(){
        $('#tombol-tambah').click(function () {
          $('#button-simpan').val("create-post"); //valuenya menjadi create-post
          $('#id').val(''); //valuenya menjadi kosong
          $('#form-tambah-edit').trigger("reset"); //mereset semua input dll didalamnya
          $('#modal-judul').html("Tambah Manager"); //valuenya tambah pegawai baru
          $('#tambah-edit-modal').modal('show'); //modal tampil
      });
      }
     


        if ($('#form-tambah-edit').length > 0) {

          $.ajax({
            data:  $('#form-tambah-edit').serialize(),
            url:"{{ route('employees.update',$employee->id) }}",

            type:"POST",
            dataType:'json',
            success:function (data) {
              $('#form-tambah-edit').trigger("reset");
              $('#form-tambah-edit').modal("hide");
              $('#tombol-simpan').html('Simpan');
              var oTable = $('#manager-table').dataTable();
              oTable.fnDraw(false);

            },
            error: function (data) {
              console.log("Error:", data);
              $('#tombol-simpan').html('Simpan');
            }
          });
        }


        
        $('body').on('click', '.edit-post', function (){
          var data_id = $(this).data('id');
          $.get('staff/employees/'+ "{{$employee->id}}" + '/show' ,function (data) {
            $('#modal-judul').html("Edit Data Manager");
            $('#tombol-simpan').val("edit-post");
            $('#tambah-edit-modal').modal('show');


            // Set value 
            $('#id').val(data.id);
            $('#first_name').val(data.first_name);
            $('#last_name').val(data.last_name);
            $('#email').val(data.email);
            $('#gender').val(data.gender);
            $('#department_id').val(data.department_id);
            
          })
        });


        $(document).on('click','.delete', function(){
          dataId = $(this).attr('id');
          $('#konfirmasi-modal').modal('show');
        })
        // $('#tombol-hapus').click(function () {
        //   $.ajax({
        //     url:"{{ route('employees.destroy',$employee->id) }}",
        //     type:"delete",
        //     dataType:'json',
        //     beforeSend : function (){
        //       $('#tombol-hapus').text('Hapus Data');
        //     },
        //     success : function (data) {
        //       setTimeout(function () {
        //         $('#konfirmasi-modal').modal('hide');
        //         var oTable = $('#manager-table').dataTable();
        //         oTable.fnDraw(false);
        //       });
        //       console.log('data Berhasil dihapus');
        //     }
        //   })
        // })
        $(document).on('click', '#tombols', function (){
          $('.confirmModal').modal('show');
        $('.modal-title').text('{{__('DELETE Record')}}');
        $('.bank-ok').text('{{trans('file.OK')}}');
        })

          $(document).on('click', '#tombol-hapus', function () {

            console.log($('#status_user').val());


            console.log('TOmbol hapus sudah di tekan')
            $.ajax({
              data:  $('#tambah-edit-modals').serialize(),
           
            url:"{{ route('employees.statuss',$employee->id) }}",
            type:"post",
            dataType:'json',
            beforeSend : function (){
              $('#tombol-hapus').text('Ok');
            },
            success : function (data) {
              setTimeout(function () {
                $('#konfirmasi-modal').modal('hide');
                var oTable = $('#manager-table').dataTable();
                oTable.fnDraw(false);
                console.log('data Berhasil dihapus');
                  location.reload();
              });
            }
          })
          })

      </script>