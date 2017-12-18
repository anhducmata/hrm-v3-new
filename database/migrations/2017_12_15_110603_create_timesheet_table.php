<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTimesheetTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('timesheet', function(Blueprint $table)
        {
            $table->increments('id');
            $table->integer('user_id');
            $table->string('punch_in')->nullable();
            $table->string('punch_out')->nullable();
            $table->string('year')->nullable(); 
            $table->string('week')->nullable(); 
            $table->string('date')->nullable(); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('timesheet');
    }
}
