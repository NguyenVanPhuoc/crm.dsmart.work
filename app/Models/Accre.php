<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class Accre extends Model {
    use LogsActivity;
    protected $table = "accres";
    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    protected $fillable = [
        'equipment_id','provider','time','note','content',
    ];
    
    protected static $logAttributes = ['equipment_id'];

    public function equipments(){
        return $this->belongsTo('App\Models\Equipment','equipment_id','id');
    }
}
