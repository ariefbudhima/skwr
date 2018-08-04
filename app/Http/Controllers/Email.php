<?php

namespace App\Http\Controllers;
use App\mailuser;
use Illuminate\Support\Facades\Mail;
use App\Mail\EmailNotif;
use App\register;
use Hash;

use Illuminate\Http\Request;

class Email extends Controller
{
  public function store(Request $request)
  {
      $users = User::get();
      $this->validate(request(), [
      'title'    =>'required',
      'body'    =>'required',
    ]);
      $post = new Post;
      $post->title = $request->title;
      $post->body = $request->body;
      $post->save();
      foreach($users as $user)
      {
          Mail::to($user->email)->send(new admin($post));
      }
      return redirect('/');
  }
  public function send(){
    $users = mailuser::where('flag',0)->get();
    foreach ($users as $user) {
      // Mail::send('email.admin', ['user' => $user], function($message){
      //   $message->to($user->email);
      //   // dd($message);
      // });
      //dd($user->email);

      $lala = Mail::to($user)->send(new EmailNotif($user));

      dd($lala);
      $user->flag = 1;
      $user->save();
    }
  }
}
