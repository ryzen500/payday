<section>

    <span id="manager_data_general_result"></span>


    <div class="container-fluid">
        <?php if(auth()->user()->can('store-details-employee') || auth()->user()->id == $employee->id): ?>
            <button type="button" class="btn btn-info" name="create_record" id="create_manager_data_record"><i
                        class="fa fa-plus"></i><?php echo e(__('Add User ')); ?></button>
        <?php endif; ?>
    </div>


    <div class="table-responsive">
        <table id="manager_data-table" class="table">
            <thead>
            <tr>
                <th><?php echo e(__('First Name')); ?></th>
                <th><?php echo e(__('Last Name')); ?></th>
                <th><?php echo e(__('Email')); ?></th>
                <th><?php echo e(__('Status User')); ?></th>
                <th class="not-exported"><?php echo e(trans('file.action')); ?></th>
            </tr>
            </thead>

        </table>
    </div>


    <div id="BankAccountformModal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 id="exampleModalLabel" class="modal-title"><?php echo e(__('Add Manager Data')); ?></h5>
                    <button type="button" data-dismiss="modal" id="close" aria-label="Close" class="bank-close"><i class="dripicons-cross"></i></button>
                </div>

                <div class="modal-body">
                    <span id="manager_data_form_result"></span>
                    <form method="bank_code" id="manager_data_sample_form" class="form-horizontal" autocomplete="off">

                        <?php echo csrf_field(); ?>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label><?php echo e(__('Account Title')); ?> *</label>
                                <input type="text" name="first_name" id="manager_data_title"
                                       placeholder=<?php echo e(__('First Name')); ?>

                                               required class="form-control">
                            </div>


                            <div class="col-md-6 form-group">
                                <label><?php echo e(__('Last Name')); ?> *</label>
                                <input type="text" name="last_name" id="manager_data_number" required
                                       autocomplete="off" class="form-control" placeholder=<?php echo e(__('Account Number')); ?>>
                            </div>

                            <div class="col-md-6 form-group">
                                <label><?php echo e(__('Email')); ?> *</label>
                                <input type="text" name="email" id="manager_data_name" required autocomplete="off"
                                       class="form-control" placeholder=<?php echo e(__('Email')); ?> >
                            </div>

                            <div class="col-md-6 form-group">
                                <label><?php echo e(__('Status User')); ?> *</label>
                                <input type="text" name="status_user" id="bank_bank_code" placeholder=<?php echo e(__('Bank Code')); ?>

                                        required class="form-control">
                            </div>

                            


                            <div class="container">
                                <div class="form-group" align="center">
                                    <input type="hidden" name="action" id="manager_data_action"/>
                                    <input type="hidden" name="hidden_id" id="manager_data_hidden_id"/>
                                    <input type="submit" name="action_button" id="manager_data_action_button"
                                           class="btn btn-warning" value=<?php echo e(trans('file.Add')); ?> />
                                </div>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade confirmModal" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title"><?php echo e(trans('file.Confirmation')); ?></h2>
                    <button type="button" class="bank-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <h4 align="center" style="margin:0;"><?php echo e(__('Are you sure you want to remove this data?')); ?></h4>
                </div>
                <div class="modal-footer">
                    <button type="button" name="ok_button"  class="btn btn-danger bank-ok"><?php echo e(trans('file.OK')); ?></button>
                    <button type="button" class="bank-close btn-default" data-dismiss="modal"><?php echo e(trans('file.Cancel')); ?></button>
                </div>
            </div>
        </div>
    </div>

</section>

<?php /**PATH C:\xampp\htdocs\payday\resources\views/employee/manager_data/index.blade.php ENDPATH**/ ?>