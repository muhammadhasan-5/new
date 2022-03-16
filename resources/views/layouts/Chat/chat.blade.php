
@extends('layouts.master_home')
@php
$user_1 = App\Models\Chat::where('user_1',Auth::user()->id)->first();
$user_2 = App\Models\Chat::where('user_2',Auth::user()->id)->first();
$user_1_detail = null;
$user_2_detail = null;
@endphp
 @if($user_1 != null)
 @php
     $user_1_detail = App\Models\User::where('id',$user_1->user_1)->first();
    
 @endphp
 @else
 @php

    $user_2_detail = App\Models\User::where('id',$user_2->user_2)->first();
 @endphp
 @endif



@if ($user_1 != null)
@php
 
 $chat_id = App\Models\Chat::where('user_1',Auth::user()->id)->first()->Chat_id;
@endphp

@else
@php
 
$chat_id = App\Models\Chat::where('user_2',Auth::user()->id)->first()->Chat_id;
@endphp
@endif

<head>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <link href="{{asset('/css/style.css')}}" rel="stylesheet" >
 <script src="{{asset('/resources/js/chat.js')}}" defer></script>

</head>
 @section('content')
<body>
<div class="container">
<div class="messaging">
    <div class="inbox_msg">
        <div class="inbox_people">
          <div class="headind_srch">
            <div class="recent_heading" id="data">
              @if($user_1_detail != null)
              <h4 class="ceb" >{{$user_1_detail->email}}</h4>
              @else
              <h4 class="ceb" >{{$user_2_detail->email}}</h4>
              @endif
            </div>
            <div class="srch_bar">
              <div class="stylish-input-group">
             
               <i style='font-size:28px' class='fas'>&#xf14b;</i>
				</button>
                </span>
			 </div>
            </div>
        	</div>
          <div class="inbox_chat">
            <div class="chat_list active_chat">
              <div class="chat_people">
                <div class="chat_img"> 
                  @if($user_1_detail != null)
                  <img src="{{$user_1_detail->profile_photo_path}}">
                @else
                <img src="{{$user_2_detail->profile_photo_path}}" >
                @endif
                
                </div>
                
                <div class="chat_ib">
                  @if($user_1_detail != null)
                  <h5>{{$user_1_detail->name}} <span class="chat_date">{{$user_1_detail->created_at}}</span></h5>
                  <p>{{$user_1_detail->description}}</p>
                    @else
                    <h5>{{$user_2_detail->name}} <span class="chat_date">{{$user_2_detail->created_at}}</span></h5>
                    <p>{{$user_2_detail->description}}</p>
                    @endif

                </div>
              </div>
            </div>
            <div class="chat_list">
              <div class="chat_people">
                <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
                <div class="chat_ib">
                  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
                  <p>Test, which is a new approach to have all solutions 
                    astrology under one roof.</p>
                </div>
              </div>
            </div>
            <div class="chat_list">
              <div class="chat_people">
                <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
                <div class="chat_ib">
                  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
                  <p>Test, which is a new approach to have all solutions 
                    astrology under one roof.</p>
                </div>
              </div>
            </div>
            <div class="chat_list">
              <div class="chat_people">
                <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
                <div class="chat_ib">
                  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
                  <p>Test, which is a new approach to have all solutions 
                    astrology under one roof.</p>
                </div>
              </div>
            </div>
            <div class="chat_list">
              <div class="chat_people">
                <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
                <div class="chat_ib">
                  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
                  <p>Test, which is a new approach to have all solutions 
                    astrology under one roof.</p>
                </div>
              </div>
            </div>
            <div class="chat_list">
              <div class="chat_people">
                <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
                <div class="chat_ib">
                  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
                  <p>Test, which is a new approach to have all solutions 
                    astrology under one roof.</p>
                </div>
              </div>
            </div>
            <div class="chat_list">
              <div class="chat_people">
                <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
                <div class="chat_ib">
                  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
                  <p>Test, which is a new approach to have all solutions 
                    astrology under one roof.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
          <div class="headind_srch">
            <div class="recent_heading">
              <h4 class="ceb">Sunil Rajput</h4>
            </div>
               <i class="fa" style=" font-size:22px; margin-top: 1px; float: right; width: 2px;">&#xf05a;</i>
        	</div>
          
        <div class="mesgs">
          <div class="msg_history">
            <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>Test which is a new approach to have all
                    solutions</p>
                  <span class="time_date"> 11:01 AM    |    June 9</span></div>
              </div>
            </div>
            <div class="outgoing_msg">
              <div class="sent_msg">
                <p>Test which is a new approach to have all
                  solutions</p>
                <span class="time_date"> 11:01 AM    |    June 9</span> </div>
            </div>
            <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>Test, which is a new approach to have</p>
                  <span class="time_date"> 11:01 AM    |    Yesterday</span></div>
              </div>
            </div>
            <div class="outgoing_msg">
              <div class="sent_msg">
                <p>Apollo University, Delhi, India Test</p>
                <span class="time_date"> 11:01 AM    |    Today</span> </div>
            </div>
            <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>We work directly with our designers and suppliers,
                    and sell direct to you, which means quality, exclusive
                    products, at a price anyone can afford.</p>
                  <span class="time_date"> 11:01 AM    |    Today</span></div>
              </div>
            </div>
          </div>
          <div class="type_msg">
            <div class="input_msg_write">
              <input type="text" class="write_msg" placeholder="Type a message" />
			 {{-- <button class="pic"  type="button"><i style="font-size:24px" class="fa">&#xf03e;</i></button>   --}}
              <button class="msg_send_btn" type="button"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
			</div>
          </div>
        </div>
      </div>
    </div></div>
    
  @endsection

  <script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/4.3.0/socket.io.js" integrity="sha512-g6IDmcVyjQOptVso4kf6adJ5TOfiAznQLg47qiscWvor/cMHje2RCh2tU39DB4udBIm5ZhL4CPcvVDHEzo0HgA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <script type="text/javascript"> 
    // var request_id = '{{\Request::segment(3)}}';
    // console.log(request_id,'sssssssssssssssssssssssssssssss');
  
  var chat_id = {{$chat_id}};
  console.log("sggsgsgsgsgs");
        document.getElementById("data").innerHTML = "{{ $user_2_detail->email}}";
  console.log(user_1_detail,user_2_detail);
  console.log(chat_id);
  var sss = 'ss';
  console.log(chat_id);
  const socket = io("http://localhost:5000",{transports: ['websocket', 'polling'], upgrade: false, 
    query: {
      "user_1": {{ auth()->id()}} , 
      "user_2": 2,
      }});
     
      socket.on('text',()=>{
        // console.log('reloding page');
         socket.emit("message")
        
        });
  
      socket.emit("get_chat_list")
  
      socket.on("chat_list",(list)=>{
          console.log(JSON.stringify(new Date()).split(" ")[0]);
  console.log(list)
  $('#chatContactTab').empty();
          list.forEach(element => {
            
              var time = new Date(element.last_m);
              var orignal_time = time.toLocaleTimeString();
              var name_slug =element.Name.replace(/\s/g, '-');
              var append_string = element.Unseen_Count > 0 ? '<div><span class="dot">'+element.Unseen_Count+'</span></div>': "";
             var block =   '<li class="contacts-item archived @if('element.userid' == 'request_id') active @endif"><a class="contacts-link" href="/Student/Conversation/'+element.userid+'/'+name_slug+'"><div class="avatar"><img src="{{asset('/public/profile_img')}}//'+element.Image+'" alt=""></div><div class="contacts-content"><div class="contacts-info"><h6 class="chat-name">'+element.Name+'</h6><div class="chat-time"><span>'+orignal_time+'</span></div>'+append_string+'</div><div class="contacts-texts"><p class="text-truncate">'+element.last_message+'</p></div> </div></a></li>'
                                
          
          $("#chatContactTab").append(block);
     
  });
  
  });
   
      socket.emit("Get_old_messages",chat_id)
          socket.on("Recieve_old_messages",async (e)=>{
              for(const element of e){
                  var time = new Date(element.time);
              var orignal_time = time.toLocaleTimeString();
                  console.log(element.sender_id =={{ auth()->id()}})
          if(element.sender_id == {{ auth()->id()}}){
                  var block = ' <div class="message self" id="'+rand()+'"><div class="message-wrapper"><div class="message-content" style="background-color:#2D8DFE;">'+element.message+'</div></div><div class="message-options"><div class="avatar avatar-sm"><img alt="" src="{{asset("/public/profile_img")}}/{{Auth::user()->profile_pic}}"></div><span class="message-date">'+orignal_time+'</span><br></div></div></div></div> ';
             
             $("#message-container").append(block);
                  }
                  else{
                      var block = ' <div class="message" id="'+rand()+'"><div class="message-wrapper"><div class="message-content">'+element.message+'</div></div><div class="message-options"><div class="avatar avatar-sm"><img alt="" src="{{asset("/public/profile_img")}}/"></div><span class="message-date">'+orignal_time+'</span><br></div></div></div></div> ';
             
             $("#message-container").append(block);
  
                  }
              }
              $("#messageBody").animate({
           scrollTop: $( '#messageBody').get(0).scrollHeight },3000);
  
              // let qwe = e
                     
              // let mm = await get_messagesd(qwe)
              // console.log(mm,"222")   
              chat_unseen()        
          });
  
         
          socket.on("messsageget",(e)=>{
              var time = new Date(e.time);
              var orignal_time = time.toLocaleTimeString();
              console.log(e.message)
              if(e.sender_id=={{ auth()->id()}}){
                  var block = ' <div class="message self" id="'+rand()+'"><div class="message-wrapper"><div class="message-content" style="background-color:#2D8DFE;">'+e.message+'</div></div><div class="message-options"><div class="avatar avatar-sm"><img alt="" src="{{asset("/public/profile_img")}}/{{Auth::user()->profile_pic}}"></div><span class="message-date">'+orignal_time+'</span><br></div></div></div></div> ';
              $("#message-container").append(block);
  
  
              }
              else{
  
                  var block = ' <div class="message" id="'+rand()+'"><div class="message-wrapper"><div class="message-content">'+e.message+'</div></div><div class="message-options"><div class="avatar avatar-sm"><img alt="" src="{{asset("/public/profile_img")}}/"></div><span class="message-date">'+orignal_time+'</span><br></div></div></div></div> ';
              $("#message-container").append(block);
              }
              $("#messageBody").animate({
           scrollTop: $( '#messageBody').get(0).scrollHeight },3000);
              socket.emit("get_chat_list")
  
              var audio = new Audio( "{{asset('/public/Notification.mp3') }}");
                      audio.play();
             
          });
          
         function send_message(){ 
          var message = $('#message_content').val();
          
         socket.emit("Send_message", chat_id, {{ auth()->id()}}, message, new Date().toISOString().replace("T", " ").split(".")[0]);
         
         $('#message_content').val('');
  
         socket.emit("get_chat_list")
  
         $("#messageBody").animate({
           scrollTop: $( '#messageBody').get(0).scrollHeight },3000);
         }
  
  
         $(document).keypress(function (e) {
      if(e.keyCode == 13) {
          var message = $('#message_content').val();
          
          socket.emit("Send_message", chat_id, {{ auth()->id()}}, message, new Date().toISOString().replace("T", " ").split(".")[0]);
          
          $('#message_content').val('');
   
          socket.emit("get_chat_list")
   
          $("#messageBody").animate({
            scrollTop: $( '#messageBody').get(0).scrollHeight },3000);
      }
  });
  
  </script>