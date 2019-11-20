<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Event;
use DB;
class EventPackage extends Model
{
    public function events()
    {   
        return DB::select('SELECT * FROM events WHERE id IN (SELECT event_id FROM `event_packages` where package_id = ?)', [$this->package_id]);
    }

    public function package()
    {
        return Package::where('id',$this->package_id)->first();
    }

}
