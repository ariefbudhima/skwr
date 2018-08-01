@extends('app')

@section('plugins_css')
<link rel="stylesheet" href="{{ asset('themes/plugins/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="box box-solid">
            <div class="box-header with-border">
              <h4>Form: Create</h4>
            </div>

            <form action="{{ url('news/save') }}" onsubmit="return validateForm()" enctype="multipart/form-data" id="tidaktaw" class="form-horizontal" method="post">
                {{ csrf_field() }}
                <input type="hidden" name="id" id="id">
            <div class="box-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Title <span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control input-sm required" id="title" name="title" placeholder="Title">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Author <span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control input-sm required" id="author" name="author" placeholder="Author">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Description <span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control input-sm required" id="description" name="description" placeholder="Description">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Isi <span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                      <textarea rows="10" class="form-control input-sm required" id="isi" name="isi" placeholder="Isi Berita"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Gambar <span class="text-danger">*</span></label>
                    <div class="col-sm-10">
                          <input type="file" class="form-control input-sm required" id="image" name="image" placeholder="Image">
                    </div>
                </div>
                <!-- <div class="form-group">
                  <label class="col-sm-2 control-label"> <span class="text-danger"></span></label>
                  <div class="col-sm-10">
                      <img src="http://placehold.it/100x100" id="showgambar" style="max-width:200px;max-height:200px;float:left;" />
                  </div>
                </div> -->
            </div>
            <div class="box-footer">
                <button type="submit" class="btn btn-primary pull-right" id="btn-submit">Submit</button>
            </div>

            </form>
            <!-- {{ csrf_field() }} -->

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

function validateForm() {
      var extension = $('#image').val().split('.').pop().toLowerCase();
      if ($.inArray(extension, ['jpg', 'png', 'jpeg', 'webp']) == -1) {
            alert("Please Select Valid File");
            return false;
        }
        return true;
}

@if (isset($data))
  console.log("halo");
  $('#title').val('{{$data->Title}}');
  $('#author').val('{{$data->Author}}');
  $('#description').val('{{$data->Description}}');
  $('#isi').val(`{{$data->Isi}}`);
  $('#id').val('{{$data->Id}}')
  // console.log('{{$data->Id}}');
@endif

</script>
@endsection
