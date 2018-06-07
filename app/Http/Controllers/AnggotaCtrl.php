<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Menu;
use App\Permission;
use DB;

/**
 *
 */
class AnggotaCtrl extends Controller
{

  function index()
  {
    return view('anggota.anggota');
  }


}

 ?>
