@extends('app')

@section('plugins_css')
<link rel="stylesheet" href="{{ asset('themes/plugins/fancytree/skin-win8/ui.fancytree.min.css') }}">
<link rel="stylesheet" href="{{asset('mycss.css')}}">
<style>
#tree ul.fancytree-container {
    border: none;
}
#tree li {
    padding: 3px 0;
}
</style>
@endsection

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="box box-solid">
            <div class="box-header with-border">
                <h4>Tree: Menu</h4>
                <div class="box-tools pull-right">
                    <a class="btn btn-primary" href="{{ url('menus/create/0') }}"><i class="fa fa-plus"></i> New Root </a>
                </div>
                <!-- <p id="demp"></p> -->
            </div>

            <div class="box-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="tree"><?php  ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@section('plugins_js')
<script type="text/javascript" src="{{ asset('themes/plugins/fancytree/jquery.fancytree-all.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/plugins/fancytree/extensions/jquery.fancytree.dnd.js') }}"></script>
@endsection

@section('contentjs')
<script type="text/javascript">
$(function() {
    $('#tree').fancytree({
        clickFolderMode: 2,
        source: {
            url: '{{ url('menus/tree') }}',
            cache: false
        },
        renderNode: function(event, data) {
            var node = data.node;
            var nodeSpan = $(node.span);
            if(!nodeSpan.data('rendered')) {
                // render Buttons
                var btnAddChild = $('<a href="{{ url('menus/create') }}/'+ node.key +'" class="text-success" title="Add child to this item"><i class="fa fa-plus"></i></a>');
                <?php $nkey = "<script>document.write(node.key)</script>" ?>
                // document.getElementById('demp').innerHTML = node.key;
                // var gatau = node.key;
                var btnEdit = $('<a href="{{ url('menus/update') }}/'+ node.key +'" class="text-primary" title="Edit this item" style="margin-left:10px"><i class="fa fa-pencil"></i></a>');
                var btnDelete = $('<a href="javascript:" class="text-danger" data-id="'+ node.key +'" title="Delete this item" style="margin-left:10px"><i class="fa fa-trash"></i></a>');
                btnDelete.click(function() {
                    alert('Function unavailable!');
                });
                // render Span
                var spanBtn = $('<span class="fancytree-buttons hidden" style="padding-left:20px"></span>');
                spanBtn.append(btnAddChild);
                spanBtn.append(btnEdit);
                spanBtn.append(btnDelete);
                // append elements
                nodeSpan.append(spanBtn);
                nodeSpan.hover(
                    function() {
                        spanBtn.removeClass('hidden');
                    },
                    function() {
                        spanBtn.addClass('hidden');
                    }
                );
                nodeSpan.data('rendered', true);
            }
        }
    });

    // $('#add')({
    //   var btnAdd = $('<a href="{{ url('menus/create') }}/'+ node.key +'" class="text-success" title="Add child to this item"><i class="fa fa-plus"></i></a>');
    // });
});

</script>
@endsection
