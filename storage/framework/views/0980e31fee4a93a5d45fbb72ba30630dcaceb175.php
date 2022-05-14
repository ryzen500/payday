
$('#manager_data-table').DataTable().clear().destroy();

var table_table = $('#manager_data-table').DataTable({
    initComplete: function () {
        this.api().columns([0]).every(function () {
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
        url: "<?php echo e(route('employees.details',$employee->id)); ?>",
        

    },

    columns: [

        {
            data: 'first_name',
            name: 'first_name',
        },
        {
            data: 'last_name',
            name: 'last_name',
        },
        {
            data: 'email',
            name: 'email',
        },
        {
            data: 'status_user',
            name: 'status_user',
        },

        {
            data: 'action',
            name: 'action',
            orderable: false
        }
    ],


    "order": [],
    'language': {
        'lengthMenu': '_MENU_ <?php echo e(__('records per page')); ?>',
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
            'targets': [0, 5],
        },
    ],


    'select': {style: 'multi', selector: 'td:first-child'},
    'lengthMenu': [[10, 25, 50, -1], [10, 25, 50, "All"]],
});

new $.fn.dataTable.FixedHeader(table_table);


    
<?php /**PATH C:\xampp\htdocs\payday\resources\views/employee/manager_data/index_js.blade.php ENDPATH**/ ?>