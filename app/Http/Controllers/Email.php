<?php

namespace App\Http\Controllers;

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
}
