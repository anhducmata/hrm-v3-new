<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Timekeeping;
use App\User;
use Auth;
class TimesheetController extends Controller
{
	public function index(){
		$weeks = $this->weeks();
		return view('salary.timesheet', compact('weeks'));
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

	// public function getDataFromDateOfWeek(Request $request){
	// 	if(request()->ajax()){

	// 	}
	// }
}
