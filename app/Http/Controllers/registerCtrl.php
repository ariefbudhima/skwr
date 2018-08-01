<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Requests\RegistrationRequest;
use App\Http\Controllers\Controller;
use App\User;
use App\Mail\EmailNotif;
use Illuminate\Support\Facades\Mail;

use App\Jobs\SendEmail;
use Carbon\Carbon;


use DB;
use Hash;
use App\register;
use App\Role;
use App\Roleuser;
use App\Anggota;
use App\mailuser;
use Entrust;
use Datatables;
use Notifiable;
use Notification;

use App\Notifications\notifadmin;


/**
 *
 */
class registerCtrl extends Controller
{

  function index()
  {
    // code...
    return view('login.registrasi');
  }

  public function approveView(){
    return view('Approve.approve');
  }

  public function dat(){
    $data = register::all();
    $dt = register::first();
    if($dt){
      return Datatables::of($data)
      ->addColumn('No', function($data) {
        return NULL;
    })
      ->addColumn('action', function($data) {
              $html = Entrust::can('approved') ? '<a href="'. url('approve/save/'.$data->nip) .'" class="text-primary row-edit" data-toggle="tooltip" title="Edit User"><span class="fa fa-check"></span></a>' : '';
              $html .= Entrust::can('approve_delete') ? '&nbsp;&nbsp;<a href="javascript:" data-url="'. url('approve/delete/'.$data->nip) .'" class="text-danger row-delete" data-toggle="tooltip" title="Delete User"><span class="glyphicon glyphicon-trash"></span></a>' : '';
              return $html;
        })
        ->make(TRUE);
    }
    else {
      $data = '{"draw": 0, "recordsTotal": 0, "recordsFiltered": 0, "data":[]}';
      return $data;
    }
  }

  public function doRegister(Request $req ){
    return DB::transaction(function() use($req){
      $anu = User::where('username','=',$req->nip)->first();
      if($anu){
        return back()->with('error', 'Username/NIP sudah ada!');
      }
      else {
        try {
          $register = new register();
          $register->nip = $req->nip;
          $register->password = Hash::make($req->password);
          $register->namalengkap = $req->namalengkap;
          $register->email = $req->email;
          $register->nomorhp = $req->nomorhp;
          $register->alamat = $req->alamat;
          $register->jabatan = $req->jabatan;
          $register->unitkerja = $req->unitkerja;
          $register->save();

          $user = User::join('role_user AS r', function ($join){
                    $join->on('users.id','=','r.user_id')
                    ->where('r.role_id','=', 1);
                  })
                  ->get();
          // Mail::to($user)->send(new EmailNotif());
          foreach ($user as $us) {
            $mail = new mailuser();
            $mail->subject = "Pemberitahuan Pendaftaran User Baru";
            $mail->email = $us->email;
            $mail->isi = $us->name.", terdapat user baru yang melakukan pendaftaran, harap segera melakukan approve kepada user berikut ".$req->namalengkap;
            $mail->flag = FALSE;
            // dd($mail);
            $mail->save();
          }




          // DB::table('tblmail')->insert()
          // $job = (new SendEmail($user))->delay(Carbon::now()->addSeconds(5));
          // dispatch($job);
            // Notification::send($user, new notifadmin("A new user has visited on your application."));
          return redirect('/')->with('success','Register Success');

        } catch (\Exception $e) {
          DB::rollback();
          return back()->with('error', 'Error while saving data! '. $e->getMessage())->withInput();
        }
      }
    });
  }

  public function save(Request $req){
    // dd($req);
    return DB::transaction(function() use($req){
      try {
        $user = new User();
        $role = new Roleuser();
        $anggota = new Anggota();

        $register = register::where('nip','=',$req->nip)->first();
        // untuk db anggota
        $anggota->nip = $register->nip;
        $anggota->password = $register->password;
        $anggota->namalengkap = $register->namalengkap;
        $anggota->nomorhp = $register->nomorhp;
        $anggota->alamat = $register->alamat;
        $anggota->email = $register->email;
        $anggota->jabatan = $register->jabatan;
        $anggota->unitkerja = $register->unitkerja;
        $anggota->save();

        $user->username = $register->nip;
        $user->password = $register->password;
        $user->name = $register->namalengkap;
        $user->email = $register->email;
        $user->save();

        $user = User::where('username','=',$req->nip)->first();
        $role->user_id = $user->id;
        $role->role_id = 2;
        $role->save();

        // for ($i=0; $i <count($user) ; $i++) {
          $mail = new mailuser();
          $mail->subject = "Pemberitahuan Penerimaan User Baru";
          $mail->email = $user->email;
          $mail->isi = $user->name.", Selamat bergabung dalam keluarga Serikat Karyawan Wika Realty";
          $mail->flag = FALSE;
          // dd($mail);
          $mail->save();
        // }
        // $user->notify(new notifadmin("Welcome to Our Family, Your Account Now Has Been Activated"));
        // Mail::to($user)->send(new EmailNotif());
        // $job = (new SendEmail($user->email))->delay(Carbon::now()->addSeconds(5));
        // dispatch($job);
        // dispatch(new SendEmail($user));

        $register = register::where('nip','=',$req->nip)->delete();
        return redirect('/')->with('success','Register Success');
        // dd($anggota);
        // dd($register);

      } catch (\Exception $e) {
        DB::rollback();
        return back()->with('error', 'Error while saving data! '. $e->getMessage())->withInput();
      }
    });
  }

  public function destroy($nip)
  {
      $dt = register::where('nip','=',$nip)->first();

        $mail = new mailuser();
        $mail->subject = "Pemberitahuan Pendaftaran User Baru";
        $mail->email = $dt->email;
        $mail->isi = $dt->namalengkap.", Kami tidak dapat memproses perintaan pendaftaran akun anda, Terima Kasih!";
        $mail->flag = FALSE;
        $mail->save();

      register::where('nip','=',$nip)->delete();
      return redirect('approve')->with('success', 'register deleted!');
  }

}
