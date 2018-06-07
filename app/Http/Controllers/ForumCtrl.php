<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Menu;
use App\Permission;
use DB;

/**
 *
 */
class ForumCtrl extends Controller
{

  function index()
  {
    return view('forum.forum');
  }

  function create(){
    return view('forum.create');
  }

}

 ?>
