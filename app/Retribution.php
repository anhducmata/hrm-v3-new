<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Retribution extends Model
{
    protected $table = 'retribution';

    public function User() 
    {
        return $this->belongsTo('App\User', 'user_id' ,'id');
    }
}
