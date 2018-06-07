<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Menu;
use App\Permission;
use DB;

/**
 *
 */
class PengurusCtrl extends Controller
{

  function index()
  {
    return view('pengurus.p');
  }


}

 ?>
