<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use Spatie\Activitylog\Traits\LogsActivity;
class Project extends Model {
    use SluggableScopeHelpers;
    use Sluggable;
    use LogsActivity;
    protected $table = "projects";
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title'           
            ]
        ];
    }
    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    protected $fillable = [
        'title','slug','procurement','decision','note','status','image','fromDate','toDate','author_id'
    ];
    protected static $logAttributes = ['title'];
    public function equipment(){
        return $this->belongsTo('App\Models\Equipment','bid_project_id','id');
    }
}