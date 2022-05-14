
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
        url: "{{ route('employees.details',$employee->id) }}",
        {{-- url: "staff/manager_data/9", --}}

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
        'lengthMenu': '_MENU_ {{__('records per page')}}',
        "info": '{{trans("file.Showing")}} _START_ - _END_ (_TOTAL_)',
        "search": '{{trans("file.Search")}}',
        'paginate': {
            'previous': '{{trans("file.Previous")}}',
            'next': '{{trans("file.Next")}}'
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
{{-- console.log(table_table); --}}
new $.fn.dataTable.FixedHeader(table_table);


    {{-- $('#create_manager_data_record').click(function () {

        $('.modal-title').text("{{__('Add Bank Account')}}");
        $('#manager_data_action_button').val('{{trans('file.Add')}}');
        $('#manager_data_action').val('{{trans('file.Add')}}');
        $('#BankAccountformModal').modal('show');
    });

    $('#manager_data_sample_form').on('submit', function (event) {
        event.preventDefault();
        if ($('#manager_data_action').val() == '{{trans('file.Add')}}') {

            $.ajax({
                url: "{{ route('employees.store',$employee->id) }}",
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
                    if (data.success) {
                        html = '<div class="alert alert-success">' + data.success + '</div>';
                        $('#manager_data_sample_form')[0].reset();
                        $('#manager_data-table').DataTable().ajax.reload();
                    }
                    $('#manager_data_form_result').html(html).slideDown(300).delay(5000).slideUp(300);
                }

            });
        }

        if ($('#manager_data_action').val() == '{{trans('file.Edit')}}') {
            $.ajax({
                url: "{{ route('employees.update') }}",
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
                        setTimeout(function () {
                            $('#BankAccountformModal').modal('hide');
                            $('#manager_data-table').DataTable().ajax.reload();
                            $('#manager_data_sample_form')[0].reset();
                        }, 2000);

                    }
                    $('#manager_data_form_result').html(html).slideDown(300).delay(5000).slideUp(300);
                }
            });
        }
    });


    $(document).on('click', '.manager_data_edit', function () {

        var id = $(this).attr('id');

        var target = "{{ route('employees.index') }}/" + id + '/edit';


        $.ajax({
            url: target,
            dataType: "json",
            success: function (html) {

                let id = html.data.id;

                $('#manager_data_title').val(html.data.account_title);
                $('#manager_data_number').val(html.data.account_number);
                $('#bank_bank_name').val(html.data.bank_name);
                $('#bank_bank_code').val(html.data.bank_code);
                $('#bank_bank_branch').val(html.data.bank_branch);


                $('#manager_data_hidden_id').val(html.data.id);
                $('.modal-title').text('{{trans('file.Edit')}}');
                $('#manager_data_action_button').val('{{trans('file.Edit')}}');
                $('#manager_data_action').val('{{trans('file.Edit')}}');
                $('#BankAccountformModal').modal('show');
            }
        })
    });


    let bank_delete_id;

    $(document).on('click', '.manager_data_delete', function () {
    bank_delete_id = $(this).attr('id');
        $('.confirmModal').modal('show');
        $('.modal-title').text('{{__('DELETE Record')}}');
        $('.bank-ok').text('{{trans('file.OK')}}');
    });


    $('.bank-close').click(function () {
        $('#manager_data_sample_form')[0].reset();
        $('.confirmModal').modal('hide');
        $('#manager_data-table').DataTable().ajax.reload();
    });

    $('.bank-ok').click(function () {
        let target = "{{ route('employees.index') }}/" + bank_delete_id + '/delete';
        $.ajax({
            url: target,
            beforeSend: function () {
                $('.bank-ok').text('{{trans('file.Deleting...')}}');
            },
            success: function (data) {
                setTimeout(function () {
                    $('.confirmModal').modal('hide');
                    $('#manager_data-table').DataTable().ajax.reload();
                }, 2000);
            }
        })
    }); --}}
