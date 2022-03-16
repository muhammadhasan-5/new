<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\PostCommentController;
use App\Http\Controllers\LikesController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\RelationshipController;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/







//TESTS
Route::get('/register',function(){
    return view('auth.register');
})->name('register')->middleware('guest');


//USERS

Route::get('/{username}/saved',[UserController::class,'savedPosts'])->middleware('verifyAccountOwner');
// Route::get('/posts/saved',[UserController::class,'savedPosts']);
Route::get('/{username}/archived',[UserController::class,'archivedPosts'])->middleware('verifyAccountOwner');
Route::get('/user/search/{text}',[UserController::class,'searchUsers']);
Route::get('/user/friends/search/{text}',[UserController::class,'searchUsersFriends']);
Route::get('/user/{userId}/friends',[UserController::class,'showFriends']);
Route::get('/notifications',[UserController::class,'showNotifications']);
Route::get('/user/{username}',[UserController::class,'show']);


//CHAT 

Route::get('/chat',[App\Http\Controllers\chatController::class,'chatView']);




//ACCOUNT
Route::get('/accounts/edit',[UserController::class,'edit']);
Route::get('/accounts/password',[UserController::class,'editPassword']);
Route::put('/accounts/privacy/update',[UserController::class,'updatePrivacy']);
Route::put('/accounts/photo/update',[UserController::class,'updateProfilePhoto']);


//RELATIONSHIPS
Route::get('/user/friend/add/{userId}',[RelationshipController::class,'sendFriendRequest']);
Route::get('/user/friend/accept/{userId}',[RelationshipController::class,'acceptRequest']);
Route::get('/user/friend/decline/{userId}',[RelationshipController::class,'declineRequest']);
Route::get('/user/friend/remove/{userId}',[RelationshipController::class,'removeFriend']);
//we can use the same function as for removing a  friend
Route::get('/user/friend/cancelRequest/{userId}',[RelationshipController::class,'removeFriend']);
Route::get('/user/block/{userId}',[RelationshipController::class,'blockUser']);
Route::get('/user/unblock/{userId}',[RelationshipController::class,'removeFriend']);




//POSTS
Route::get('/',[PostController::class,'home']);
Route::get('/posts',[PostController::class,'posts']);
Route::post('/posts',[PostController::class,'store']);
Route::post('/posts/{postId}/update',[PostController::class,'update']);
Route::get('/api/posts/{postId}',[PostController::class,'singlePost']);
Route::get('/posts/{postId}',[PostController::class,'show']);
Route::get('/posts/{postId}/delete',[PostController::class,'destroy'])->middleware('auth');
Route::get('/posts/{postId}/archive',[PostController::class,'archive']);
Route::get('/posts/{postId}/restore',[PostController::class,'restore']);





//Save post
Route::get('/{postId}/save',[PostController::class,'savePost']);
Route::get('/{postId}/save/remove',[PostController::class,'removeSavedPost']);


//Comment Post
Route::post('/{postId}/comment',[PostCommentController::class,'addComment']);
Route::get('/{postId}/comment/remove',[PostCommentController::class,'removeComment']);

//Like posts
Route::get('/{postId}/like',[LikesController::class,'likePost']);
Route::get('/{postId}/like/remove',[LikesController::class,'removeLikePost']);

Route::fallback(function () {
    if(Auth::check()){
        return view("error");
    }else{
        return Redirect()->route('login');
    }


});


Route::get('testapi',function(){
    $value = [
        [
            'name' => 'find out more',
            'type' => 'list',
            'image_url' => null,
            'list' => [
                [
                'title' => "product 1",
                'description' => "product 1 desc",
                'image source' => "https://i.picsum.photos/id/924/200/200.jpg?hmac=-YPUvHCTNDIgKRr_6V8Cb080iccIIDU1FhDG41YrEjY",
                'image_url' => "https://picsum.photos/",
                ],

                [
                 'title' => "",
                 'description' => "",
                 'image source' => "https://i.picsum.photos/id/611/200/200.jpg?hmac=1Tkz2gFbAArMMLUWylD-8s6PzYgu0sPIdO71hlp9Xs0",
                 'image_url' => "https://picsum.photos/",
                    ],

                [
                 'title' => "product 3",
                 'description' => "",
                 'image source' => "https://i.picsum.photos/id/454/200/200.jpg?hmac=N13wDge6Ku6Eg_LxRRsrfzC1A4ZkpCScOEp-hH-PwHg",
                 'image_url' => "https://picsum.photos/",
                    ],
            ]
        ],
            [

            'name' => 'find out more in rectangle',
            'type' => 'shape',
            'image_url' => 'https://i.picsum.photos/id/423/300/200.jpg?hmac=sh-E4EaAaqCYPgyyAcuwMMRgc4b96HW27ph2F-Bm8lc',
            'image_link' => null,
            'list' => []

            ],

            [

                'name' => 'find out more in rectangle',
                'type' => 'shape',
                'image_url' => 'https://i.picsum.photos/id/423/300/200.jpg?hmac=sh-E4EaAaqCYPgyyAcuwMMRgc4b96HW27ph2F-Bm8lc',
                'image_link' => null,
                'list' => []
    
            ],

            [
                'name' => 'find out more',
                'type' => 'list',
                'image_url' => null,
                'list' => [
                    [
                    'title' => "product 1",
                    'description' => "product 1 desc",
                    'image source' => "https://i.picsum.photos/id/924/200/200.jpg?hmac=-YPUvHCTNDIgKRr_6V8Cb080iccIIDU1FhDG41YrEjY",
                    'image_url' => "https://picsum.photos/",
                    ],
    
                    [
                     'title' => "",
                     'description' => "",
                     'image source' => "https://i.picsum.photos/id/611/200/200.jpg?hmac=1Tkz2gFbAArMMLUWylD-8s6PzYgu0sPIdO71hlp9Xs0",
                     'image_url' => "https://picsum.photos/",
                        ],
    
                    [
                     'title' => "product 3",
                     'description' => "",
                     'image source' => "https://i.picsum.photos/id/454/200/200.jpg?hmac=N13wDge6Ku6Eg_LxRRsrfzC1A4ZkpCScOEp-hH-PwHg",
                     'image_url' => "https://picsum.photos/",
                        ],
                ]
            ],

        ];
    return response()->json(
        $value
    );
});
