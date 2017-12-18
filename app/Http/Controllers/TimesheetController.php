<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Timekeeping;
use App\User;
use App\TimeSheet;
use Auth;
class TimesheetController extends Controller
{
	public function index(){
		$weeks = $this->weeks();
		$users = User::All();
		$user_id = Auth::User()->id;
		$week = date('W');
		if (isset($_GET["uid"])) {
			$user_id = $_GET["uid"];
		}

		if (isset($_GET["week"])) {
			$week = $_GET["week"];
		}
		$ts_data = TimeSheet::Where('year',date('Y'))->Where('week', $week)->Where('user_id', $user_id)->get();
		return view('salary.timesheet', compact('weeks', 'users', 'user_id', 'week','ts_data'));
	}

	public function store(){
		$user_id = $_POST["user_id"];
		$time_in = $_POST["punch_in"];
		$time_out = $_POST["punch_out"];
		$thu = $_POST["thu"];
		$year = date("Y");
		$week = date("W");
		$ts_check = TimeSheet::where('year', $year)->where('week', $week)->where('date', $thu)->first();
		if (is_null($ts_check)) {
			$ts = new TimeSheet;
			$ts->user_id = $user_id;
			$ts->punch_in = $time_in;
			$ts->punch_out = $time_out;
			$ts->year = $year;
			$ts->week = $week;
			$ts->date = $thu;
			$ts->save();
		}else{
			$ts_check->user_id = $user_id;
			$ts_check->punch_in = $time_in;
			$ts_check->punch_out = $time_out;
			$ts_check->year = $year;
			$ts_check->week = $week;
			$ts_check->date = $thu;
			$ts_check->save();
		}
		
	}

	public static function weeks()
	{
	    $nextWeek = strtotime('+1 week');
	    /* change the upper bound of the loop using `date('W')` */
	    for( $i=0; $i < date('W'); $i++ ) 
	    {
	        $date   = date('Y-m-d', strtotime('-'.$i.' week'));
	        $nbDay  = date('N', strtotime($date));

	        $monday = new \DateTime($date);
	        $sunday = new \DateTime($date);

	        $monday->modify('-'.($nbDay-1).' days');
	        $sunday->modify('+'.(7-$nbDay).' days');
	        if($nextWeek > strtotime($sunday->format('Y-m-d'))) {
	            $weeks[$monday->format('W')] = $monday->format('F d/m/y') . ' - ' . $sunday->format('F d/m/y');
	        }
	    }
	    return $weeks;
	}
	public static function getTimeDiff($dtime,$atime)
	    {
	        $nextDay = $dtime>$atime?1:0;
	        $dep = explode(':',$dtime);
	        $arr = explode(':',$atime);
	        $diff = abs(mktime($dep[0],$dep[1],0,date('n'),date('j'),date('y'))-mktime($arr[0],$arr[1],0,date('n'),date('j')+$nextDay,date('y')));
	        $hours = floor($diff/(60*60));
	        $mins = floor(($diff-($hours*60*60))/(60));
	        $secs = floor(($diff-(($hours*60*60)+($mins*60))));
	        if(strlen($hours)<2){$hours="0".$hours;}
	        if(strlen($mins)<2){$mins="0".$mins;}
	        if(strlen($secs)<2){$secs="0".$secs;}
	        return $hours + $mins/60;
	    }
}
