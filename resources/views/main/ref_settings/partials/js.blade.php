<script>
    
    var oTable = '';
    $(function(){
        
        if ($('#datatables').length) {
            make_table();
            $('#datatables').on('draw.dt', function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        }

        @if(@$is_show)
            $(".form-control").attr("disabled", true)
            $(".form-select").attr("disabled", true)
            $(":checkbox").attr("disabled", true)
            $(".fa-trash").parent().addClass("d-none");
            $(".add_new_product").addClass("d-none");
        @endif

    });

    function make_table(){

        var url = "{{ url('ref-settings') }}";

        var table = $('#datatables');
        oTable = table.DataTable({
            destroy: true,
            processing: true,
            serverSide: true,
            iDisplayLength: 25,
            responsive: true,
            oLanguage: {
                sSearch: '<em class="fa fa-search"></em>',
                sLengthMenu: '_MENU_ records per page',
                info: 'Showing page _PAGE_ of _PAGES_',
                zeroRecords: 'Nothing found - sorry',
                infoEmpty: 'No records available',
                infoFiltered: '(filtered from _MAX_ total records)',
                oPaginate: {
                    sNext: '<em class="fa fa-caret-right"></em>',
                    sPrevious: '<em class="fa fa-caret-left"></em>'
                }
            },
            ajax: {
                "url": url,
                "type": "GET",
            },
            columns: [
                // {data: 'id', name: 'id'},
                {data: 'level', name: 'Level'},
                {data: 'ref_num', name: 'Referred Count'},
                {data: 'rate', name: 'Rate'},
                {data: 'action', name: 'Actions'}
            ],
            fnDrawCallback: function (oSettings) { oTable.page(oSettings.page) },
            "columnDefs": [
                {
                    "searchable": false,
                    "targets":[3]
                },
                {
                    "orderable": false,
                    "targets":[3]
                }
            ],
            "order": [
                [0,'asc']
            ],
        });

    }

</script>
