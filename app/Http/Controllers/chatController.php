<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class chatController extends Controller
{
    public function chatView(){
        return view('layouts.Chat.chat');
    }
}
