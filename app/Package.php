<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\EventPackage;
use DB;
class Package extends Model
{
    public function events()
    {
       return DB::Select('
        SELECT * FROM events WHERE id in (SELECT event_id from event_packages where package_id = ?)
       ',[$this->id]);
    }    


}
