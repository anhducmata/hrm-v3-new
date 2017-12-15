<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notification;
use Illuminate\Support\Facades\Auth;
use App\NotiUser;
use App\User;
use App\UserDepartment;
use App\Department;
use DB;
use View;
class NotiController extends Controller
{
    public function postNoti(Request $request){
    	$notification = new Notification;
    	$notification->title = $request->title;
    	$notification->content = $request->content;
    	$notification->create_by = Auth::user()->id;
    	$notification->save();
    	
        //Kiem tra user co trong department ko
        $check_user = UserDepartment::where('user_id', Auth::user()->id)->count();
        if($check_user > 0){
            $check_user = true;
        }else{
            $check_user = false;
        }

        //ko co user trong phong, gui toan bo, xoa user hien tai trong noti_user
        if($check_user == false){
            $user = User::select('id')->get();

            $array_id = array();
            foreach ($user as $key => $value) {
                $array_id[] = $value['id'];
            }
            $index = array_search(Auth::user()->id, $array_id);
            unset($array_id[$index]);

         }else if($check_user){
        //     //Lay room
            $user_department = UserDepartment::where('user_id', '=', Auth::user()->id)->value('department_id');
            $user = UserDepartment::where('department_id', $user_department)->get();

            $array_id = array();
            foreach ($user as $key => $value) {
                $array_id[] = $value['user_id'];
            }
            $index = array_search(Auth::user()->id, $array_id);
            unset($array_id[$index]);
        }

    	
            
            
        foreach ($array_id as $value) {
            $noti_user = new NotiUser;
            $noti_user->user_id = $value;
            $noti_user->noti_id = $notification->id;
            $noti_user->isRead = 1;
            $noti_user->save();
        }
    	
        

        return $send_data = array('id' => $notification->id, 'check_user' => $check_user);
    	 //return $notification->id;
    }

    public function detail($id){
    	$noti = Notification::find($id);
    	return view('notification/detail', ['notification' => $noti]);
    }

    public function readMessage(Request $request){
        //Cap nhat da doc
        // $isRead = NotiUser::where('user_id', Auth::user()->id)
        //                     ->where('isRead', '=', 1)
        //                     ->update(['isRead' => 0]);
        //da doc se xoa
        $delete_Read = NotiUser::where('user_id', Auth::user()->id)->delete();
        return $request->gui;                    
    }

    public function countMessage(Request $request){
        $count = NotiUser::where('user_id', Auth::user()->id)
                            ->where('isRead', '=', 1)->count();
        return $count;
    }


    public function createRoom(Request $request){
        $department = Department::join('users_department', 'departments.id', '=', 'users_department.department_id')
                            ->where('user_id', Auth::user()->id)
                            ->value('code');

        // $getNoti = DB::select('select * from notification, noti_user where notification.id = noti_user.noti_id and noti_user.isRead = 1 and noti_user.user_id = :id_test', ['id_test' => Auth::user()->id]);
        // View::share('getNoti', $getNoti);

         return $department;
    }

    public function getNoti(Request $request){
        //getNoti();
          $getNoti = DB::select('select * from notification, noti_user where notification.id = noti_user.noti_id and noti_user.isRead = 1 and noti_user.user_id = :id_test', ['id_test' => Auth::user()->id]);
         // View::share('getNoti', $getNoti);
          return $getNoti;
    }

    public function test(){
       $getNoti = DB::select('select * from notification, noti_user where notification.id = noti_user.noti_id and noti_user.isRead = 1 and noti_user.user_id = :id_test', ['id_test' => Auth::user()->id]);
        return $getNoti;
        dd($department);
    }
}
