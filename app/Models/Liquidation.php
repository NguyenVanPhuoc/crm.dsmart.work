<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class Liquidation extends Model {
    use LogsActivity;

    protected $table = "liquidations";

   
    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    protected $fillable = [
        'equipment_id',
        'amount',
        'reason',
        'user_id',
        
    ];

    protected static $logAttributes = ['amount','reason','person_up','updated_at'];
    public function user(){
        return $this->belongsTo('App\Models\User', 'user_id', 'id');
    }
    public function equipment(){
        return $this->belongsTo('App\Models\Equipment', 'equipment_id', 'id');
    }
   
}
