<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>SKWR</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="{{ asset('themes/plugins/bootstrap/dist/css/bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{ asset('themes/plugins/font-awesome/css/font-awesome.min.css') }}">
        <link rel="stylesheet" href="{{ asset('themes/plugins/Ionicons/css/ionicons.min.css') }}">
        <link rel="stylesheet" href="{{ asset('themes/plugins/toastr/toastr.min.css') }}">
        @yield('plugins_css')
        <link rel="stylesheet" href="{{ asset('themes/css/AdminLTE.min.css') }}">
        <link rel="stylesheet" href="{{ asset('themes/css/skins/skin-black-light.min.css') }}">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <style>
        body > .wrapper > .main-header {
            border-top: 6px solid #3c8dbc;
        }
        </style>
    </head>
    <body class="hold-transition skin-black-light fixed sidebar-mini sidebar-collapse">
        <div class="wrapper">
            {{-- start: header --}}
            <header class="main-header">
                <a href="{{ url('/') }}" class="logo">
                  <img class="logo-mini" src="{{asset('skwr.png')}}" alt="Our Logo" height="25" style="position:absolute; top:10px; float:left">
                    <!-- <span class="logo-lg"><b>SK Wika Realty</b></span> -->
                    <div class="logo-lg">
                      <img src="{{asset('skwr.png')}}" alt="Our Logo" height="50" style="position:static; top: 10%; float:left">
                      <span class="logo-lg" style="float:left"><b>SKWR</b></span>

                    </div>
                    <!-- <img class="logo-lg" src="{{asset('skwr.png')}}" alt="Our Logo" height="40" style="position:absolute; left:3.5%; top: 10%"> -->
                     <!-- <b>halo</b> -->
                    <!-- <img class="logo-lg"src="asset(skwr.png)" alt="Our Logo"> -->
                </a>
                <nav class="navbar navbar-static-top" role="navigation">
                    <a href="javascript:" class="sidebar-toggle" data-toggle="push-menu" role="button" style="border-right:none">
                        <span class="sr-only">Toggle Navigation</span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <li class="dropdown user user-menu">
                                <a href="javascript:" class="dropdown-toggle" data-toggle="dropdown" style="border-left:none">
                                    <img src="{{ asset('themes/images/user2-160x160.jpg') }}" alt="User Image" class="user-image">
                                    <span class="hidden-xs">{{ Auth::user()->name }}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="user-footer">
                                        <div class="pull-right">
                                            <a href="{{ url('logout') }}" class="btn btn-default btn-flat">Logout</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            {{-- end: header --}}
            {{-- start: left sidebar --}}
            <aside class="main-sidebar">
                <section class="sidebar">
                    <ul class="sidebar-menu" data-widget="tree">
                        {{-- menu tree --}}
                    </ul>
                </section>
            </aside>
            {{-- end: left sidebar --}}
            {{-- start: content wrapper --}}
            <div class="content-wrapper">
                <section class="content container-fluid">
                    {{-- start: content --}}
                    @yield('content')
                    {{-- end: content --}}
                </section>
            </div>
            {{-- end: content wrapper --}}
        </div>
        {{-- js --}}
        <script type="text/javascript" src="{{ asset('themes/plugins/jquery/dist/jquery.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('themes/plugins/jquery-ui/jquery-ui.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('themes/plugins/bootstrap/dist/js/bootstrap.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('themes/plugins/toastr/toastr.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('themes/js/adminlte.min.js') }}"></script>
        @yield('plugins_js')
        <script type="text/javascript">
        $(function() {
            // build menu
            var jsonMenu = {!! session('user_menu') !!};
            var buildMenu = function(data, level=1) {
                var menuHtml = '';
                for(var iLoop=0;iLoop<data.length;iLoop++) {
                    if(data[iLoop].children!==undefined && data[iLoop].children.length>0) {
                        menuHtml += '<li class="treeview">';
                        menuHtml += '<a href="javascript:">';
                        menuHtml += '<i class="'+ data[iLoop].icon +'"></i>';
                        menuHtml += level>1 ? data[iLoop].name : '<span>'+ data[iLoop].name +'</span>';
                        menuHtml += '<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>'+
                            '</a>'+
                            '<ul class="treeview-menu">'+
                                buildMenu(data[iLoop].children, level+1) +
                            '</ul>';
                    } else {
                        menuHtml += '<li>';
                        menuHtml += '<a href="'+ data[iLoop].url +'">';
                        menuHtml += '<i class="'+ data[iLoop].icon +'"></i><span>'+ data[iLoop].name +'</span>';
                        menuHtml += '</a>';
                    }
                    menuHtml += '</li>';
                }
                return menuHtml;
            };
            $('.main-sidebar > .sidebar > .sidebar-menu').append(buildMenu(jsonMenu));

            // build notification
            toastr.options.closeButton = true;
            @if(session('success'))
            toastr.success('{{ session('success') }}');
            @endif
            @if(session('error'))
            toastr.error('{{ session('error') }}');
            @endif
        });
        </script>
        @yield('contentjs')
    </body>
</html>
