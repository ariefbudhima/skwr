<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Menu;
use App\Permission;
use DB;

/**
 *
 */
class ContacsCtrl extends Controller
{

  function index()
  {
    return view('contacs.ct');
  }


}

 ?>
