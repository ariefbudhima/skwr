<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Menu;
use App\permission;
use App\Pengurus;
use App\rPengurus;
use Datatables;
use Entrust;
use DB;
use Validator;
use App\User;
use Carbon\Carbon;

// use Carbon::createFromFormat('Y',$tgldiangkat);
class PengurusCtrl  extends Controller
{

    public function index()
    {
      if (Entrust::can('pengurus_create')) {
        return view('Pengurus.pengurus');
      }
      else {
        $pengurus = Pengurus::where('flag','=',1)->get();
        return view('Pengurus.userview')->with('pengurus',$pengurus);
      }
    }
    function create($id = false){
      $params = [];
      if ($id!==FALSE) {
        $params['data'] = Pengurus::find($id);
      }
      // dd($params);
      return view('Pengurus.create',$params);
    }

    // function store(Request $req){
    //   return DB::transaction(function() use($req){
    //     try{
    //       $pengurus = new Pengurus();
    //       $pengurus->jabatan = $req->jabatan;
    //       $pengurus->flag = TRUE;
    //       $pengurus->nama = $req->nama;
    //       $pengurus->tgldiangkat =  $req->tgldiangkat;
    //       $pengurus->profil = $req->profil;
    //       $pengurus->periode = $req->periode;
    //       $pengurus->gambar = $req->gambar;
    //       $pengurus->save();
    //
    //       $data = Pengurus::where('jabatan','=',$pengurus->jabatan)->first();
    //       $data->flag = FALSE;
    //       $data->save();
    //       // dd($pengurus);
    //       return redirect('Pengurus')->with('success', 'register deleted!');
    //       // return view('Pengurus.pengurus')->with('success','Data saved!');
    //     } catch(\Exception $e) {
    //         DB::rollback();
    //         return back()->with('error', 'Error while saving data! '. $e->getMessage())->withInput();
    //         // return redirect('Pengurus/create/$req->id')->with('error', 'Error while saving data! '. $e->getMessage())->withInput();
    //     }
    //   });
    // }

    // function saveimage(Request $request){
    //   $extension = $request->file('file')->getClientOriginalExtension();
    //   $filename = uniqid().'_'.time().'_'.date('Ymd').'.'.$extension;
    //   $dir = 'assets/image/pengurus/';
    //   $request->file('file')->move($dir, $filename);
    //   return $dir.$filename;
    // }

    function dat(){
      $data = Pengurus::all();
      $dt = Pengurus::first();
      if ($dt) {
        // code...
        return Datatables::of($data)
        ->addColumn('No', function($data) {
          return NULL;
        })
        ->make(TRUE);
      }
      else {
        // code...
        $data = '{"draw": 0, "recordsTotal": 0, "recordsFiltered": 0, "data":[]}';
        return $data;
      }
    }


    function struktur(){
      return view('Pengurus.struktur');
    }

    function history(){
      $penguruss = Pengurus::distinct()->orderBy('periode', 'asc')->get(['periode']);
      $peng =  Pengurus::get();
      return view('Pengurus.history',['penguruss'=>$penguruss, 'peng'=>$peng]);
    }

    public function gdata(Request $req){
      $data = Pengurus::where('periode','=', $req->tgl)->get();
      return Datatables::of($data)
      ->addColumn('No', function($data) {
        return NULL;
    })
    ->make(TRUE);
    }

      public function save(Request $req){
        try {
          $validator = Validator::make($req->all(),[
            'jabatan' => 'required',
            'nama' => 'required',
            'periode' => 'required',
            'tgldiangkat' => 'required',
            'profil' => 'required',
            'gambar' => 'required|image',
          ]);
          if ($validator->fails()) {
            return back()->with('error', 'Error while saving data! ')->withInput()->with($validator);
          }else {
            try {
              $extension = $req->file('gambar')->getClientOriginalExtension();
              $filename = uniqid().'_'.time().'_'.date('Ymd').'.'.$extension;
              $dir = 'assets/image/news/';
              // save image
              $req->file('gambar')->move($dir, $filename);

              $pengurus = new Pengurus();
              $pengurus->jabatan = $req->jabatan;
              $pengurus->flag = TRUE;
              $pengurus->nama = $req->nama;
              $pengurus->tgldiangkat =  $req->tgldiangkat;
              $pengurus->profil = $req->profil;
              $pengurus->periode = $req->periode;
              $pengurus->gambar = $dir.$filename;
              $pengurus->save();

              $data = Pengurus::where('jabatan','=',$pengurus->jabatan)->first();
              $data->flag = FALSE;
              $data->save();
              return redirect('Pengurus')->with('success', 'Data Saved');

            } catch (\Exception $e) {
              return back()->with('error', 'Error while saving data! '. $e->getMessage())->withInput();
            }
          }
        } catch (\Exception $e) {
          return back()->with('error', 'Error while saving data! '. $e->getMessage())->withInput();
        }

      }

}
