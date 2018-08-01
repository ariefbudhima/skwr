@extends('app')

@section('plugins_css')
<link rel="stylesheet" href="{{ asset('themes/plugins/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="box box-solid">
            <div class="box-header with-border">
                <h4>Approve</h4>
            </div>
            <div class="box-body">
              <table id="datatables" class="table table-bordered table-striped">
                  <thead>
                      <tr>
                        <th>No</th>
                        <th>NIP</th>
                        <!-- <th>Password</th> -->
                        <th>Nama Lengkap</th>
                        <th>Email</th>
                        <th>Jabatan</th>
                        <th>Unit Kerja</th>
                        <th>Action</th>
                      </tr>
                  </thead>
                  <tbody>
                  </tbody>
              </table>
            </div>
        </div>
    </div>
</div>

@endsection

@section('plugins_js')
<script type="text/javascript" src="{{ asset('themes/plugins/datatables.net/js/jquery.dataTables.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/plugins/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
@endsection

@section('contentjs')
<script type="text/javascript">

$(function() {
  // console.log($(this).attr('data-url'));
  // populate table with ajax
  $('#datatables').DataTable({
    processing      : true,
    serverSide      : true,
    ajax            : '{{ url('approve/dat') }}',
    fnCreatedRow: function (row, data, index) {
			$('td', row).eq(0).html(index + 1);
			},
    columns         : [
        { data: 'No'},
        { data: 'nip'},
        // { data: 'password'},
        { data: 'namalengkap' },
        { data: 'email'},
        { data: 'jabatan' },
        { data: 'unitkerja' },
        { data: 'action', name: 'action', orderable: false, searchable: false }
    ]
});
    // console.log('{{csrf_token()}}')

    // event
    $('body').on('click', '.row-delete', function() {
        if(confirm('Attempting to delete data, are you sure?')) {
            location.href = $(this).attr('data-url');
        }
    });
});
</script>
@endsection
