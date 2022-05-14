<section>

    <span id="overtime_general_result"></span>


    <div class="mb-3">
        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('set-salary')): ?>
            <button type="button" class="btn btn-info" name="create_record" id="create_overtime_record"><i
                        class="fa fa-plus"></i><?php echo e(__('Add Overtime')); ?></button>
        <?php endif; ?>
    </div>

    <div class="row">
        <div class="table-responsive">
            <table id="overtime-table" class="table ">
                <thead>
                <tr>
                    <th><?php echo e(__('Month-Year')); ?></th>
                    <th><?php echo e(trans('file.Title')); ?></th>
                    <th><?php echo e(__('Number Of Days')); ?></th>
                    <th><?php echo e(__('Total Hours')); ?></th>
                    <?php if(config('variable.currency_format')=='suffix'): ?>
                        <th><?php echo e(__('Rate')); ?> (<?php echo e(config('variable.currency')); ?>)</th>
                    <?php else: ?>
                        <th>(<?php echo e(config('variable.currency')); ?>) <?php echo e(__('Rate')); ?></th>
                    <?php endif; ?>
                    <th class="not-exported"><?php echo e(trans('file.action')); ?></th>
                </tr>
                </thead>

            </table>
        </div>
    </div>

    <div id="OvertimeformModal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 id="exampleModalLabel" class="modal-title"><?php echo e(__('Add Overtime')); ?></h5>
                    <button type="button" data-dismiss="modal" id="close" aria-label="Close" class="overtime-close"><i class="dripicons-cross"></i></button>
                </div>

                <div class="modal-body">
                    <span id="overtime_form_result"></span>
                    <form method="post" id="overtime_sample_form" class="form-horizontal" autocomplete="off">

                        <?php echo csrf_field(); ?>
                        <div class="row">

                            <div class="col-md-6 form-group">
                                <label><?php echo e(__('Month Year')); ?> *</label>
                                <input class="form-control month_year" name="month_year" type="text" id="month_year">
                            </div>

                            <div class="col-md-6 form-group">
                                <label><?php echo e(trans('file.Title')); ?> *</label>
                                <input type="text" name="overtime_title" id="overtime_title"
                                       placeholder=<?php echo e(trans('file.Title')); ?>

                                               required class="form-control">
                            </div>
                            <div class="col-md-6 form-group">
                                <label><?php echo e(__('Number Of Days')); ?> *</label>
                                <input type="text" name="no_of_days" id="no_of_days"
                                       placeholder=<?php echo e(__('Number Of Days')); ?>

                                               required class="form-control">
                            </div>

                            <div class="col-md-6 form-group">
                                <label><?php echo e(__('Total Hours')); ?> *</label>
                                <input type="text" name="overtime_hours" id="overtime_hours"
                                       placeholder=<?php echo e(__('Total Hours')); ?>

                                               required class="form-control">
                            </div>
                            <div class="col-md-6 form-group">
                                <?php if(config('variable.currency_format')=='suffix'): ?>
                                    <label><?php echo e(__('Rate')); ?> (<?php echo e(config('variable.currency')); ?>) *</label>
                                <?php else: ?>
                                    <label>(<?php echo e(config('variable.currency')); ?>) <?php echo e(__('Rate')); ?> *</label>
                                <?php endif; ?> 
                                <input type="text" name="overtime_rate" id="overtime_rate"
                                              placeholder=<?php echo e(trans('file.Rate')); ?>

                                              value="10000"
                                                      required class="form-control">
                            </div>


                            <div class="col-md-6 form-group">
                                <?php if(config('variable.currency_format')=='suffix'): ?>
                                    <label><?php echo e(__('Rate')); ?> (<?php echo e(config('variable.currency')); ?>) *</label>
                                <?php else: ?>
                                    <label>Total Denda *</label>
                                <?php endif; ?> 
                                <input type="text" 
                                              placeholder="Total Denda"
                                              id="total"
                                              value="<?php echo e($datas->overtime_amount); ?>"
                                                      required class="form-control">
                            </div>


                            <div class="col-md-6 form-group">
                                <label><?php echo e(__('Calculate leave')); ?> ?</label>          
                                <!-- <select name="calculate_leave" id="calculate_leave_allowance"
                                        class="form-control selectpicker">
                                    <option value="1"><?php echo e(trans('file.Ya')); ?></option>
                                    <option value="0"><?php echo e(trans('file.Tidak')); ?></option>
                                </select> -->
                                <select name="calculate_leave" id="calculate_leave"
                                    class="selectpicker form-control">
                                <option value="ya"><?php echo e(trans('ya')); ?></option>
                                <option value="tidak"><?php echo e(trans(' tidak')); ?></option>
                                </select>
                            </div>

                            <div class="container">
                                <br>
                                
                                <div class="form-group" align="center">
                                    <input type="hidden" name="action" id="overtime_action"/>
                                    <input type="hidden" name="hidden_id" id="overtime_hidden_id"/>
                                    <input type="submit" name="action_button" id="overtime_action_button"
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
                    <button type="button" class="overtime-close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <h4 align="center" style="margin:0;"><?php echo e(__('Are you sure you want to remove this data?')); ?></h4>
                </div>
                <div class="modal-footer">
                    <button type="button" name="ok_button"  class="btn btn-danger overtime-ok"><?php echo e(trans('file.OK')); ?></button>
                    <button type="button" class="overtime-close btn-default" data-dismiss="modal"><?php echo e(trans('file.Cancel')); ?></button>
                </div>
            </div>
        </div>
    </div>

</section>
<script>
    function formatRupiah(angka, prefix)
	{
		var number_string = angka.replace(/[^,\d]/g, '').toString(),
			split	= number_string.split(','),
			sisa 	= split[0].length % 3,
			rupiah 	= split[0].substr(0, sisa),
			ribuan 	= split[0].substr(sisa).match(/\d{3}/gi);
			
		if (ribuan) {
			separator = sisa ? '.' : '';
			rupiah += separator + ribuan.join('.');
		}
		
		rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
		return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');
	}
       $(document).ready(function() {
        $("#overtime_rate, #overtime_hours").keyup(function() {
            var harga  = $("#overtime_rate").val();
            var jumlah = $("#overtime_rate").val();

            var total = parseInt(harga) * parseInt(jumlah);
            var lalas ='<?php echo e(config('variable.currency')); ?> ' + formatRupiah('Rp' + total);
            $("#total").val(lalas);
        });
    });
    </script>
<?php /**PATH C:\xampp\htdocs\payday\resources\views/employee/salary/overtime/index.blade.php ENDPATH**/ ?>