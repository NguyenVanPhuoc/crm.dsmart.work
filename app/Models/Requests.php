<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;


class Requests extends Model {

    use LogsActivity;


    protected $table = "requests";


    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    protected $fillable = [
        'user_id','department_id','device_name','time','serial', 'model','code','note','reply','status'
    ];

    protected static $logAttributes = ['user_id','department_id','device_name','time','serial', 'model','code','note','reply','status'];

    public function user(){
        return $this->belongsTo('App\Models\User','user_id','id');
    }

    public function department(){
        return $this->belongsTo('App\Models\Department','department_id','id');
    }

    public function request_media(){
        return $this->belongsToMany('App\Models\Media','request_media','request_id','media_id');
    }

    public function attachments() {
        return $this->morphToMany('App\Models\Media', 'mediable')->wherePivot('type','image');
    }
    
    public function files() {
        return $this->morphToMany('App\Models\Media', 'mediable')->wherePivot('type','file');
    }

}
