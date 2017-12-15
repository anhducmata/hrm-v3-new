<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployeeRelative extends Model
{
    protected $table = 'employee_relatives';
    protected $fillable = ['full_name', 'address', 'phone_number', 'relation', 'is_dependent'];
}
