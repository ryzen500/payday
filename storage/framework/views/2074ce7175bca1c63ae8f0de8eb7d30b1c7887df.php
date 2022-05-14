
<?php $__env->startSection('content'); ?>



    <section>

        <div class="container-fluid"><span id="general_result"></span></div>


        <div class="container-fluid mb-3">
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('store-job_post')): ?>
                <button type="button" class="btn btn-info" name="create_record" id="create_record"><i
                            class="fa fa-plus"></i> <?php echo e(__('Add Job')); ?></button>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('delete-job_post')): ?>
                <button type="button" class="btn btn-danger" name="bulk_delete" id="bulk_delete"><i
                            class="fa fa-minus-circle"></i> <?php echo e(__('Bulk delete')); ?></button>
            <?php endif; ?>
        </div>


        <div class="table-responsive">
            <table id="job_post-table" class="table ">
                <thead>
                <tr>
                    <th class="not-exported"></th>
                    <th><?php echo e(trans('file.Position')); ?></th>
                    <th><?php echo e(trans('file.Company')); ?></th>
                    <th><?php echo e(__('Posted Date')); ?></th>
                    <th><?php echo e(trans('file.Status')); ?></th>
                    <th><?php echo e(__('Closing Date')); ?></th>
                    <th class="not-exported"><?php echo e(trans('file.action')); ?></th>
                </tr>
                </thead>

            </table>
        </div>
    </section>



    <div id="formModal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 id="exampleModalLabel" class="modal-title"><?php echo e(__('Add Job')); ?></h5>
                    <button type="button" data-dismiss="modal" id="close" aria-label="Close" class="close"><i class="dripicons-cross"></i></button>
                </div>

                <div class="modal-body">
                    <span id="form_result"></span>

                    <form autocomplete="off" method="post" id="sample_form" class="form-horizontal">

                        <?php echo csrf_field(); ?>
                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="company_id"><?php echo e(__('Company')); ?></label>
                                    <select name="company_id" id="company_id" required
                                            class="form-control selectpicker"
                                            data-live-search="true" data-live-search-style="begins"
                                            title='<?php echo e(__('Selecting',['key'=>__('Company')])); ?>...'>
                                        <?php $__currentLoopData = $companies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $company): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($company->id); ?>"><?php echo e($company->company_name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6 form-group">
                                <label for="job_title"><?php echo e(__('Job Title')); ?> *</label>
                                <input type="text" name="job_title" id="job_title" required
                                       placeholder=<?php echo e(__('Job Title')); ?>

                                               required class="form-control">
                            </div>

                            <div class="col-md-6 form-group">
                                <label><?php echo e(__('Job Type')); ?> *</label>
                                <select name="job_type" id="job_type" required class="selectpicker form-control"
                                        data-live-search="true" data-live-search-style="begins"
                                        title="Select Job Type...">
                                    <option value="full_time"><?php echo e(__('Full Time')); ?></option>
                                    <option value="part_time"><?php echo e(__('Part Time')); ?></option>
                                    <option value="internship"><?php echo e(trans('file.Internship')); ?></option>
                                    <option value="freelance"><?php echo e(trans('file.Freelance')); ?></option>
                                </select>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="job_category_id"><?php echo e(__('Job Category')); ?></label>
                                    <select name="job_category_id" id="job_category_id" required
                                            class="form-control selectpicker"
                                            data-live-search="true" data-live-search-style="begins"
                                            title='<?php echo e(__('Selecting',['key'=>__('Job Category')])); ?>...'>
                                        <?php $__currentLoopData = $job_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $job_category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($job_category->id); ?>"><?php echo e($job_category->job_category); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6 form-group">
                                <label for="no_of_vacancy"><?php echo e(__('No Of Vacancy')); ?> </label>
                                <input type="text" name="no_of_vacancy" id="no_of_vacancy"
                                       required class="form-control">
                            </div>

                            <div class="col-md-6 form-group">
                                <label for="closing_date"><?php echo e(__('Date Of Closing')); ?></label>
                                <input type="text" name="closing_date" id="closing_date" autocomplete="off" required
                                       class="form-control date">
                            </div>

                            <div class="col-md-6 form-group">
                                <label for="gender"><?php echo e(trans('file.Gender')); ?> *</label>
                                <select name="gender" id="gender" required class="selectpicker form-control"
                                        data-live-search="true" data-live-search-style="begins"
                                        title="<?php echo e(__('Selecting',['key'=>trans('file.Gender')])); ?>...">
                                    <option value="No Preference"><?php echo e(__('No Preference')); ?></option>
                                    <option value="Male"><?php echo e(trans('file.Male')); ?></option>
                                    <option value="Female"><?php echo e(trans('file.Female')); ?></option>
                                    <option value="Other"><?php echo e(trans('file.Other')); ?></option>
                                </select>
                            </div>

                            <div class="col-md-6 form-group">
                                <label for="min_experience"><?php echo e(__('Minimum Experience')); ?> *</label>
                                <select name="min_experience" id="min_experience" required
                                        class="selectpicker form-control"
                                        data-live-search="true" data-live-search-style="begins"
                                        title="Select Option...">
                                    <option value="Fresh"><?php echo e(trans('file.Fresh')); ?></option>
                                    <option value="1 Years">1 <?php echo e(trans('file.Years')); ?></option>
                                    <option value="2 Years">2 <?php echo e(trans('file.Years')); ?></option>
                                    <option value="3 Years">3 <?php echo e(trans('file.Years')); ?></option>
                                    <option value="4 Years">4 <?php echo e(trans('file.Years')); ?></option>
                                    <option value="5 Years">5 <?php echo e(trans('file.Years')); ?></option>
                                    <option value="6 Years">6 <?php echo e(trans('file.Years')); ?></option>
                                    <option value="7 Years">7 <?php echo e(trans('file.Years')); ?></option>
                                    <option value="8 Years">8 <?php echo e(trans('file.Years')); ?></option>
                                    <option value="9 Years">9 <?php echo e(trans('file.Years')); ?></option>
                                    <option value="10 Years">10 <?php echo e(trans('file.Years')); ?></option>
                                    <option value="+10 Years">+10 <?php echo e(trans('file.Years')); ?></option>
                                </select>
                            </div>

                            <div class="col-md-6 form-group">
                                <label for="is_featured"><?php echo e(__('Is Featured?')); ?> *</label>
                                <select name="is_featured" id="is_featured" required class="selectpicker form-control"
                                        data-live-search="true" data-live-search-style="begins"
                                        title="Select Option...">
                                    <option value="0">No</option>
                                    <option value="1">Yes</option>
                                </select>
                            </div>

                            <div class="col-md-6 form-group">
                                <label for="status"><?php echo e(trans('file.Status')); ?> *</label>
                                <select name="status" id="status" required class="selectpicker form-control"
                                        data-live-search="true" data-live-search-style="begins"
                                        title="<?php echo e(__('Selecting',['key'=>trans('file.Status')])); ?>...">
                                    <option value="0"><?php echo e(trans(('file.Unpublished'))); ?></option>
                                    <option value="1"><?php echo e(trans('file.Published')); ?></option>
                                </select>
                            </div>


                            <div class="col-md-12 form-group">
                                <label for="short_description"><?php echo e(__('Short Description')); ?></label>
                                <textarea class="form-control" id="short_description" name="short_description"
                                          rows="3"></textarea>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="long_description"><?php echo e(__('Long Description')); ?></label>
                                    <textarea class="form-control" id="long_description" name="long_description"
                                              rows="3"></textarea>
                                </div>
                            </div>


                            <div class="container">
                                <div class="form-group" align="center">
                                    <input type="hidden" name="action" id="action"/>
                                    <input type="hidden" name="hidden_id" id="hidden_id"/>
                                    <input type="submit" name="action_button" id="action_button" class="btn btn-warning"
                                           value=<?php echo e(trans('file.Add')); ?>>
                                </div>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>



    <div id="confirmModal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title"><?php echo e(trans('file.Confirmation')); ?></h2>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <h4 align="center"><?php echo e(__('Are you sure you want to remove this data?')); ?></h4>
                </div>
                <div class="modal-footer">
                    <button type="button" name="ok_button" id="ok_button" class="btn btn-danger"><?php echo e(trans('file.OK')); ?>'
                    </button>
                    <button type="button" class="close btn-default"
                            data-dismiss="modal"><?php echo e(trans('file.Cancel')); ?></button>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        (function($) {  
            "use strict";

            $(document).ready(function () {

                var date = $('.date');
                date.datepicker({
                    format: '<?php echo e(env('Date_Format_JS')); ?>',
                    autoclose: true,
                    todayHighlight: true
                });


                let table_table = $('#job_post-table').DataTable({
                    initComplete: function () {
                        this.api().columns([1]).every(function () {
                            var column = this;
                            var select = $('<select><option value=""></option></select>')
                                .appendTo($(column.footer()).empty())
                                .on('change', function () {
                                    var val = $.fn.dataTable.util.escapeRegex(
                                        $(this).val()
                                    );

                                    column
                                        .search(val ? '^' + val + '$' : '', true, false)
                                        .draw();
                                });

                            column.data().unique().sort().each(function (d, j) {
                                select.append('<option value="' + d + '">' + d + '</option>');
                                $('select').selectpicker('refresh');
                            });
                        });
                    },
                    responsive: true,
                    fixedHeader: {
                        header: true,
                        footer: true
                    },
                    processing: true,
                    serverSide: true,
                    ajax: {
                        url: "<?php echo e(route('job_posts.index')); ?>",
                    },

                    columns: [

                        {
                            data: null,
                            orderable: false,
                            searchable: false
                        },
                        {
                            data: 'job_description',
                            name: 'job_description',

                        },
                        {
                            data: 'company',
                            name: 'company',
                        },
                        {
                            data: 'updated_at',
                            name: 'updated_at',
                        },
                        {
                            data: 'status',
                            name: 'status',
                            render: function (data) {
                                if (data == 1) {
                                    return "<td><div class = 'badge badge-success'>Published</div></td>";
                                } else {
                                    return "<td><div class = 'badge badge-danger'>Unpublished</div></td>";
                                }
                            }

                        },
                        {
                            data: 'closing_date',
                            name: 'closing_date',
                        },
                        {
                            data: 'action',
                            name: 'action',
                            orderable: false
                        }
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
                            "orderable": false,
                            'targets': [0, 6],
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
            });

            tinymce.init({
                selector: '#long_description',
                setup: function (editor) {
                    editor.on('change', function () {
                        editor.save();
                    });
                },
                height: 130,

                image_title: true,
                /* enable automatic uploads of images represented by blob or data URIs*/
                automatic_uploads: true,
                /*
                  URL of our upload handler (for more details check: https://www.tiny.cloud/docs/configure/file-image-upload/#images_upload_url)
                  images_upload_url: 'postAcceptor.php',
                  here we add custom filepicker only to Image dialog
                */
                file_picker_types: 'image',
                /* and here's our custom image picker*/
                file_picker_callback: function (cb, value, meta) {
                    var input = document.createElement('input');
                    input.setAttribute('type', 'file');
                    input.setAttribute('accept', 'image/*');

                    /*
                      Note: In modern browsers input[type="file"] is functional without
                      even adding it to the DOM, but that might not be the case in some older
                      or quirky browsers like IE, so you might want to add it to the DOM
                      just in case, and visually hide it. And do not forget do remove it
                      once you do not need it anymore.
                    */

                    input.onchange = function () {
                        var file = this.files[0];

                        var reader = new FileReader();
                        reader.onload = function () {
                            /*
                              Note: Now we need to register the blob in TinyMCEs image blob
                              registry. In the next release this part hopefully won't be
                              necessary, as we are looking to handle it internally.
                            */
                            var id = 'blobid' + (new Date()).getTime();
                            var blobCache =  tinymce.activeEditor.editorUpload.blobCache;
                            var base64 = reader.result.split(',')[1];
                            var blobInfo = blobCache.create(id, file, base64);
                            blobCache.add(blobInfo);

                            /* call the callback and populate the Title field with the file name */
                            cb(blobInfo.blobUri(), { title: file.name });
                        };
                        reader.readAsDataURL(file);
                    };

                    input.click();
                },

                plugins: [
                    'advlist autolink lists link image charmap print preview anchor textcolor',
                    'searchreplace visualblocks code fullscreen',
                    'insertdatetime media table contextmenu paste code wordcount'
                ],
                toolbar: 'insert | undo redo |  formatselect | bold italic backcolor  | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat',
                branding: false
            });


            $('#create_record').on('click', function () {

                $('.modal-title').text('<?php echo e(__('Add Job')); ?>');
                $('#action_button').val('<?php echo e(trans("file.Add")); ?>');
                $('#action').val('<?php echo e(trans("file.Add")); ?>');
                $('#formModal').modal('show');
            });

            $('#sample_form').on('submit', function (event) {

                event.preventDefault();
                if ($('#action').val() == '<?php echo e(trans('file.Add')); ?>') {
                    $.ajax({
                        url: "<?php echo e(route('job_posts.store')); ?>",
                        method: "POST",
                        data: new FormData(this),
                        contentType: false,
                        cache: false,
                        processData: false,
                        dataType: "json",
                        success: function (data) {
                            var html = '';
                            if (data.errors) {
                                html = '<div class="alert alert-danger">';
                                for (var count = 0; count < data.errors.length; count++) {
                                    html += '<p>' + data.errors[count] + '</p>';
                                }
                                html += '</div>';
                            }
                            if (data.error) {
                                html = '<div class="alert alert-danger">' + data.error + '</div>';
                            }
                            if (data.success) {
                                html = '<div class="alert alert-success">' + data.success + '</div>';
                                $('#sample_form')[0].reset();
                                $('select').selectpicker('refresh');
                                $('#job_post-table').DataTable().ajax.reload();
                            }
                            $('#form_result').html(html).slideDown(300).delay(5000).slideUp(300);
                        }
                    });
                }

                if ($('#action').val() == '<?php echo e(trans('file.Edit')); ?>') {
                    $.ajax({
                        url: "<?php echo e(route('job_posts.update')); ?>",
                        method: "POST",
                        data: new FormData(this),
                        contentType: false,
                        cache: false,
                        processData: false,
                        dataType: "json",
                        success: function (data) {
                            var html = '';
                            if (data.errors) {
                                html = '<div class="alert alert-danger">';
                                for (var count = 0; count < data.errors.length; count++) {
                                    html += '<p>' + data.errors[count] + '</p>';
                                }
                                html += '</div>';
                            }
                            if (data.error) {
                                html = '<div class="alert alert-success">' + data.error + '</div>';
                            }
                            if (data.success) {
                                html = '<div class="alert alert-success">' + data.success + '</div>';
                                setTimeout(function () {
                                    $('#formModal').modal('hide');
                                    $('select').selectpicker('refresh');
                                    $('#job_post-table').DataTable().ajax.reload();
                                    $('#sample_form')[0].reset();
                                }, 2000);

                            }
                            $('#form_result').html(html).slideDown(300).delay(5000).slideUp(300);
                        }
                    });
                }
            });


            $(document).on('click', '.edit', function () {

                var id = $(this).attr('id');
                $('#form_result').html('');


                var target = "<?php echo e(route('job_posts.index')); ?>/" + id + '/edit';

                $.ajax({
                    url: target,
                    dataType: "json",
                    success: function (html) {

                        $('#company_id').selectpicker('val', html.data.company_id);
                        $('#job_category_id').selectpicker('val', html.data.job_category_id);
                        $('#job_type').selectpicker('val', html.data.job_type);
                        $('#gender').selectpicker('val', html.data.gender);
                        $('#min_experience').selectpicker('val', html.data.min_experience);
                        $('#is_featured').selectpicker('val', html.data.is_featured);
                        $('#status').selectpicker('val', html.data.status);
                        $('#job_title').val(html.data.job_title);
                        $('#no_of_vacancy').val(html.data.no_of_vacancy);
                        $('#closing_date').val(html.data.closing_date);
                        $('#short_description').val(html.data.short_description);


                        if (html.data.long_description) {
                            function htmlDecode(input){
                                var e = document.createElement('div');
                                e.innerHTML = input;
                                return e.childNodes.length == 0 ? "" : e.childNodes[0].nodeValue;
                            }
                            tinymce.get('long_description').setContent(htmlDecode(html.data.long_description));
                        }

                        $('#hidden_id').val(html.data.id);
                        $('.modal-title').text('<?php echo e(trans('file.Edit')); ?>');
                        $('#action_button').val('<?php echo e(trans('file.Edit')); ?>');
                        $('#action').val('<?php echo e(trans('file.Edit')); ?>');
                        $('#formModal').modal('show');
                    }
                })
            });


            let delete_id;

            $(document).on('click', '.delete', function () {
                delete_id = $(this).attr('id');
                $('#confirmModal').modal('show');
                $('.modal-title').text('<?php echo e(__('DELETE Record')); ?>');
                $('#ok_button').text('<?php echo e(trans('file.OK')); ?>');

            });


            $(document).on('click', '#bulk_delete', function () {

                var id = [];
                let table = $('#job_post-table').DataTable();
                id = table.rows({selected: true}).ids().toArray();
                if (id.length > 0) {
                    if (confirm('<?php echo e(__('Delete Selection',['key'=>trans('file.Job')])); ?>')) {
                        $.ajax({
                            url: '<?php echo e(route('mass_delete_job_posts')); ?>',
                            method: 'POST',
                            data: {
                                job_postIdArray: id
                            },
                            success: function (data) {
                                let html = '';
                                if (data.success) {
                                    html = '<div class="alert alert-success">' + data.success + '</div>';
                                }
                                if (data.error) {
                                    html = '<div class="alert alert-danger">' + data.error + '</div>';
                                }
                                table.ajax.reload();
                                table.rows('.selected').deselect();
                                if (data.errors) {
                                    html = '<div class="alert alert-danger">' + data.error + '</div>';
                                }
                                $('#general_result').html(html).slideDown(300).delay(5000).slideUp(300);

                            }

                        });
                    }
                } else {

                }
            });


            $('.close').on('click', function () {
                $('#sample_form')[0].reset();
                $('select').selectpicker('refresh');
                $('#job_post-table').DataTable().ajax.reload();
            });

            $('#ok_button').on('click', function () {
                let target = "<?php echo e(route('job_posts.index')); ?>/" + delete_id + '/delete';
                $.ajax({
                    url: target,
                    beforeSend: function () {
                        $('#ok_button').text('<?php echo e(trans('file.Deleting...')); ?>');
                    },
                    success: function (data) {
                        let html = '';
                        if (data.success) {
                            html = '<div class="alert alert-success">' + data.success + '</div>';
                        }
                        if (data.error) {
                            html = '<div class="alert alert-danger">' + data.error + '</div>';
                        }
                        setTimeout(function () {
                            $('#general_result').html(html).slideDown(300).delay(5000).slideUp(300);
                            $('#confirmModal').modal('hide');
                            $('#job_post-table').DataTable().ajax.reload();
                        }, 2000);
                    }
                })
            });
        })(jQuery); 
    </script>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /opt/bitnami/apache2/htdocs/demo/payday/resources/views/recruitment/job_post/index.blade.php ENDPATH**/ ?>