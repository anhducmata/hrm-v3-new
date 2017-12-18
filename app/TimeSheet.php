<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TimeSheet extends Model
{
    protected $table = 'timesheet';

    protected $fillable = [
        'user_id', 'punch_in','punch_out','year','week',
    ];
}
