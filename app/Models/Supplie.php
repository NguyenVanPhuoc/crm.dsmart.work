<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;


use Cviebrock\EloquentSluggable\Sluggable;

use Cviebrock\EloquentSluggable\SluggableScopeHelpers;

use Spatie\Activitylog\Traits\LogsActivity;


class Supplie extends Model {

    use SluggableScopeHelpers;

    use Sluggable;

    use LogsActivity;


    protected $table = "supplies";

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
        'title','slug','image','code', 'author_id'
    ];

    protected static $logAttributes = ['title'];


    public function supplie_equipment(){
        return $this->hasMany('App\Models\Equipment','supplie_id','id');
    }



}
