<section>
    <span id="immigration_general_result"></span>
    <button type="button" href="javascript:void(0)" onclick="Add()" class="btn btn-info "  id="tombol-tambah"  data-toggle="modal" data-target="#exampleModal" data-whatever="Tester">
      <i class="dripicons-pencil"></i> Manager Data </button>
    <div class="table-responsive row">
      <div id="immigration-table_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
        <div class="row">
          
          
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
                <?php echo csrf_field(); ?>
                <input type="hidden" name="_token" value="<?= csrf_token(); ?>">
                
                <div class="form-group">
                  <input type="hidden" name="id" id="id">
                  <label for="recipient-name" class="col-form-label">First Name :</label>
                  <input type="text" class="form-control" name="first_name" id="first_name" value="<?php echo e($employee->first_name); ?>">
                </div>

                <div class="form-group">
                    <label for="recipient-name" class="col-form-label">Last Name :</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" value="<?php echo e($employee->last_name); ?>">
                  </div>


                  <div class="form-group">
                    <label for="recipient-name" class="col-form-label">Email :</label>
                    <input type="text" class="form-control" id="email" name="email" value="<?php echo e($employee->email); ?>">
                  </div>

                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="contact_no" name="contact_no" value="<?php echo e($employee->contact_no); ?>">
                  </div>

                  
                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="date_of_birth" name="date_of_birth" value="<?php echo e($employee->date_of_birth); ?>">
                  </div>
                  

                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="username" name="username" value="<?php echo e($employee->user->username); ?>">
                  </div>
                  

                  
                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="status_id" name="status_id" value="<?php echo e($employee->status_id); ?>">
                  </div>
                  
                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="role_users_id" name="role_users_id" value="<?php echo e($employee->role_users_id); ?>">
                  </div>

                  
                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="attendance_type" name="attendance_type" value="<?php echo e($employee->attendance_type); ?>">
                  </div>


                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="total_leave" name="total_leave" value="<?php echo e($employee->total_leave); ?>">
                  </div>


                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="joining_date" name="joining_date" value="<?php echo e($employee->joining_date); ?>">
                  </div>


                  <label for="recipient-name" class="col-form-label">Data Manager :</label>
                  <div class="form-group">
                    <select type="text" class="selectpicker form-control designation"   
                    data-designation_name="designation_name"
                     id="status_user" name="status_user">
                      <?php if($employee->status_user == null ||$employee->status_user == 0): ?>
                      <option value="--">--</option>
                      <?php $__currentLoopData = $pegawai; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pegawais): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($pegawais->id); ?>"><?php echo e($pegawais->first_name); ?></option>
                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>

                      <?php if($employee->role_users_id == 4 && $employee->status_user == null): ?>
                      <option value="<?php echo e($employee->id); ?>"><?php echo e($employee->first_name); ?></option>

                      <?php endif; ?>


                      <?php if($employee->status_user != 0): ?>
                      <option value="<?php echo e($employee->parent->id); ?>"><?php echo e($employee->parent->first_name); ?></option>
                      <?php $__currentLoopData = $pegawai; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pegawais): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($pegawais->id); ?>"><?php echo e($pegawais->first_name); ?></option>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>
                   
                    </select>
                  </div>


                  <label for="recipient-name" class="col-form-label">Department :</label>
                  <div class="form-group">
                    <select type="text" class="selectpicker form-control designation"     
                    data-designation_name="designation_name"
                     id="department_id" name="department_id">
                      <?php if($employee->department_id == null): ?>
                      <option value="--">--</option>
                      <?php $__currentLoopData = $departments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $department): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($department->id); ?>"><?php echo e($department->department_name); ?></option>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>

                      <?php if($employee->department_id == $employee->department_id): ?>
                      <option value="<?php echo e($employee->department_id); ?>"><?php echo e($employee->department->department_name); ?></option>
                      <?php $__currentLoopData = $departments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $department): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($department->id); ?>"><?php echo e($department->department_name); ?></option>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>
                   
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
                <?php echo csrf_field(); ?>
                <input type="hidden" name="_token" value="<?= csrf_token(); ?>">
                
                <div class="form-group">
                  <input type="hidden" name="id" id="id">
                  <label for="recipient-name" class="col-form-label">First Name :</label>
                  <input type="text" class="form-control" name="first_name" id="first_name" value="<?php echo e($employee->first_name); ?>">
                </div>

                <div class="form-group">
                    <label for="recipient-name" class="col-form-label">Last Name :</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" value="<?php echo e($employee->last_name); ?>">
                  </div>


                  <div class="form-group">
                    <label for="recipient-name" class="col-form-label">Email :</label>
                    <input type="text" class="form-control" id="email" name="email" value="<?php echo e($employee->email); ?>">
                  </div>

                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="contact_no" name="contact_no" value="<?php echo e($employee->contact_no); ?>">
                  </div>

                  
                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="date_of_birth" name="date_of_birth" value="<?php echo e($employee->date_of_birth); ?>">
                  </div>
                  

                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="username" name="username" value="<?php echo e($employee->user->username); ?>">
                  </div>
                  

                  
                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="status_id" name="status_id" value="<?php echo e($employee->status_id); ?>">
                  </div>
                  
                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="role_users_id" name="role_users_id" value="<?php echo e($employee->role_users_id); ?>">
                  </div>

                  
                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="attendance_type" name="attendance_type" value="<?php echo e($employee->attendance_type); ?>">
                  </div>


                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="total_leave" name="total_leave" value="<?php echo e($employee->total_leave); ?>">
                  </div>


                  <div class="form-group">
                    
                    <input type="hidden" class="form-control" id="joining_date" name="joining_date" value="<?php echo e($employee->joining_date); ?>">
                  </div>


                  <label for="recipient-name" class="col-form-label">Data Manager :</label>
                  <div class="form-group">
                    <select type="text" class="selectpicker form-control designation"   
                    data-designation_name="designation_name"
                     id="status_user" name="status_user">
                      <?php if($employee->status_user == null ||$employee->status_user == 0): ?>
                      <option value="--">--</option>
                      <?php $__currentLoopData = $pegawai; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pegawais): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($pegawais->id); ?>"><?php echo e($pegawais->first_name); ?></option>
                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>

                      <?php if($employee->role_users_id == 4 && $employee->status_user == null): ?>
                      <option value="<?php echo e($employee->id); ?>"><?php echo e($employee->first_name); ?></option>

                      <?php endif; ?>


                      <?php if($employee->status_user != 0): ?>
                      <option value="<?php echo e($employee->parent->id); ?>"><?php echo e($employee->parent->first_name); ?></option>
                      <?php $__currentLoopData = $pegawai; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pegawais): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($pegawais->id); ?>"><?php echo e($pegawais->first_name); ?></option>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>
                   
                    </select>
                  </div>


                  <label for="recipient-name" class="col-form-label">Department :</label>
                  <div class="form-group">
                    <select type="text" class="selectpicker form-control designation"     
                    data-designation_name="designation_name"
                     id="department_id" name="department_id">
                      <?php if($employee->department_id == null): ?>
                      <option value="--">--</option>
                      <?php $__currentLoopData = $departments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $department): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($department->id); ?>"><?php echo e($department->department_name); ?></option>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>

                      <?php if($employee->department_id == $employee->department_id): ?>
                      <option value="<?php echo e($employee->department_id); ?>"><?php echo e($employee->department->department_name); ?></option>
                      <?php $__currentLoopData = $departments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $department): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($department->id); ?>"><?php echo e($department->department_name); ?></option>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>
                   
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


      <div class="modal fade" id="konfirmasi-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="modal-judul"></h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close" >
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
            
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Hapus</button>
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
              ajax: "<?php echo e(route('employees.details',$employee->id)); ?>",
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
            url:"<?php echo e(route('employees.update',$employee->id)); ?>",

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
          $.get('staff/employees/'+ "<?php echo e($employee->id); ?>" + '/show' ,function (data) {
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
        //     url:"<?php echo e(route('employees.destroy',$employee->id)); ?>",
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

          $(document).on('click', '#tombol-hapus', function () {
            console.log($('#status_user').val());

            console.log('TOmbol hapus sudah di tekan')
            $.ajax({
              data:  $('#tambah-edit-modals').serialize(),
           
            url:"<?php echo e(route('employees.statuss',$employee->id)); ?>",
            type:"post",
            dataType:'json',
            beforeSend : function (){
              $('#tombol-hapus').text('Hapus Data');
            },
            success : function (data) {
              setTimeout(function () {
                $('#konfirmasi-modal').modal('hide');
                var oTable = $('#manager-table').dataTable();
                oTable.fnDraw(false);
                console.log('data Berhasil dihapus');

              });
            }
          })
          })

      </script><?php /**PATH C:\xampp\htdocs\payday\resources\views/employee/manager_data/tampil.blade.php ENDPATH**/ ?>