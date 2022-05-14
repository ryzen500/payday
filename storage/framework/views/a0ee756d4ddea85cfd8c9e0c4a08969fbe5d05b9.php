
<?php $__env->startSection('content'); ?>

    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="wrapper count-title text-center mb-30px ">
                        <div class="box mb-4">
                            <div class="box-header with-border">
                                <h3 class="box-title"> <?php echo e(__('Account Report')); ?> </h3>
                            </div>
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <form method="post" id="filter_form" class="form-horizontal">
                                            <?php echo csrf_field(); ?>
                                            <div class="row">

                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label><?php echo e(trans('file.Account')); ?> *</label>
                                                        <select name="account_id" id="account_id"  class="form-control selectpicker" required
                                                                data-live-search="true" data-live-search-style="begins"
                                                                title='<?php echo e(__('Selecting',['key'=>trans('file.Account')])); ?>...'>
                                                            <?php $__currentLoopData = $accounts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $account): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <option value="<?php echo e($account->id); ?>"><?php echo e($account->account_name); ?></option>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="start_date"><?php echo e(__('Start Date')); ?></label>
                                                        <input class="form-control month_year date"
                                                               placeholder="<?php echo e(__('Select Date')); ?>"
                                                               id="start_date" name="start_date" type="text" required
                                                               >
                                                    </div>
                                                </div>


                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="end_date"><?php echo e(__('End Date')); ?></label>
                                                        <input class="form-control month_year date"
                                                               placeholder="<?php echo e(__('Select Date')); ?>"
                                                               id="end_date" name="end_date" type="text" required
                                                               >
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <div class="form-actions">
                                                            <button type="submit" class="filtering btn btn-primary"><i
                                                                        class="fa fa-check-square-o"></i> <?php echo e(trans('file.Search')); ?>

                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">

                        <div class="card-title text-center"><h3><?php echo e(__('Account Info')); ?> <span
                                        id="account_info"></span></h3></div>

                        <div class="table-responsive">
                            <table id="account_report-table" class="table ">
                                <thead>
                                <tr>
                                    <th class="not-exported"></th>
                                    <th><?php echo e(trans('file.Date')); ?></th>
                                    <th><?php echo e(trans('file.Type')); ?></th>
                                    <th><?php echo e(__('Reference No')); ?></th>
                                    <?php if(config('variable.currency_format')=='suffix'): ?>
                                        <th><?php echo e(trans('file.Credit')); ?> (<?php echo e(config('variable.currency')); ?>)</th>
                                    <?php else: ?>
                                        <th>(<?php echo e(config('variable.currency')); ?>) <?php echo e(trans('file.Credit')); ?></th>
                                    <?php endif; ?>
                                    <?php if(config('variable.currency_format')=='suffix'): ?>
                                        <th><?php echo e(trans('file.Debit')); ?> (<?php echo e(config('variable.currency')); ?>)</th>
                                    <?php else: ?>
                                        <th>(<?php echo e(config('variable.currency')); ?>) <?php echo e(trans('file.Debit')); ?></th>
                                    <?php endif; ?>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th><?php echo e(trans('file.Credit')); ?></th>
                                    <th><?php echo e(trans('file.Debit')); ?></th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </section>


    <script type="text/javascript">
        (function($) {
            "use strict";

            $(document).ready(function () {

                let date = $('.date');
                date.datepicker({
                    format: '<?php echo e(env('Date_Format_JS')); ?>',
                    autoclose: true,
                    todayHighlight: true,
                });

            });


            fill_datatable();

            function fill_datatable(filter_start_date = '', filter_end_date = '', account_id = '') {


                let table_table = $('#account_report-table').DataTable({

                    "footerCallback": function (row, data, start, end, display) {
                        var api = this.api(), data;

                        // converting to interger to find total
                        var intVal = function (i) {
                            return typeof i == 'string' ?
                                i.replace(/[\$,]/g, '') * 1 :
                                typeof i == 'number' ?
                                    i : 0;
                        };

                        // computing column Total of the complete result
                        var credit = api
                            .column(4)
                            .data()
                            .reduce(function (a, b) {
                                return intVal(a) + intVal(b);
                            }, 0);

                        var debit = api
                            .column(5)
                            .data()
                            .reduce(function (a, b) {
                                return intVal(a) + intVal(b);
                            }, 0);



                        $(api.column(4).footer()).html('<p>Credit: </p>' + credit);
                        $(api.column(5).footer()).html('<p>Debit: </p>' + debit);
                    },

                    responsive: true,

                    fixedHeader: {
                        header: true,
                        footer: true
                    },
                    processing: true,
                    serverSide: true,
                    ajax: {
                        url: "<?php echo e(route('report.account')); ?>",
                        data: {
                            filter_start_date: filter_start_date,
                            filter_end_date: filter_end_date,
                            account_id: account_id,
                            "_token": "<?php echo e(csrf_token()); ?>"
                        },
                    },

                    columns: [
                        {
                            data: null,
                            orderable: false,
                            searchable: false
                        },
                        {
                            data: 'transaction_date',
                            name: 'transaction_date'
                        },
                        {
                            data: 'type',
                            name: 'type'
                        },
                        {
                            data: 'reference_no',
                            name: 'reference_no',
                        },
                        {
                            data: 'credit',
                            name: 'credit'
                        },
                        {
                            data: 'debit',
                            name: 'debit',
                        },
                    ],


                    "order": [],
                    'language': {
                        'lengthMenu': '_MENU_ <?php echo e(__("records per page")); ?>',
                        "info": '<?php echo e(trans("file.Showing")); ?> _START_ - _END_ (_TOTAL_)',
                        "search": '<?php echo e(trans("file.Search")); ?>',
                        'paginate': {
                            'previous': '<?php echo e(trans("file.Previous")); ?>',
                            'next': '<?php echo e(trans("file.Next")); ?>'
                        }
                    },

                    'columnDefs': [
                        {

                            "orderable": true,
                            'targets': [0],
                        },
                        {
                            'render': function (data, type, row, meta) {
                                if (type == 'display') {
                                    data = '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>';
                                }

                                return data;
                            },
                            'checkboxes': {
                                'selectRow': true,
                                'selectAllRender': '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>'
                            },
                            'targets': [0]
                        }
                    ],


                    'select': {style: 'multi', selector: 'td:first-child'},
                    'lengthMenu': [[10, 25, 50, -1], [10, 25, 50, "All"]],
                    dom: '<"row"lfB>rtip',
                    buttons: [
                        {
                            extend: 'pdf',
                            text: '<i title="export to pdf" class="fa fa-file-pdf-o"></i>',
                            exportOptions: {
                                columns: ':visible:Not(.not-exported)',
                                rows: ':visible'
                            },
                        },
                        {
                            extend: 'csv',
                            text: '<i title="export to csv" class="fa fa-file-text-o"></i>',
                            exportOptions: {
                                columns: ':visible:Not(.not-exported)',
                                rows: ':visible'
                            },
                        },
                        {
                            extend: 'print',
                            text: '<i title="print" class="fa fa-print"></i>',
                            exportOptions: {
                                columns: ':visible:Not(.not-exported)',
                                rows: ':visible'
                            },
                        },
                        {
                            extend: 'colvis',
                            text: '<i title="column visibility" class="fa fa-eye"></i>',
                            columns: ':gt(0)'
                        },
                    ],
                });
                new $.fn.dataTable.FixedHeader(table_table);
            }

            $('#filter_form').on('submit',function (e) {
                e.preventDefault();
                var filter_start_date = $('#start_date').val();
                var filter_end_date = $('#end_date').val();
                let account_id = $('#account_id').val();

                if (filter_start_date !== '' && filter_end_date !== '' && account_id !== '') {
                    $('#account_report-table').DataTable().destroy();
                    fill_datatable(filter_start_date, filter_end_date, account_id);
                } else {
                    alert('<?php echo e(__('Select Both filter option')); ?>');
                }
            });
        })(jQuery);

    </script>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/payday/resources/views/report/account_report.blade.php ENDPATH**/ ?>