<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;


use Cviebrock\EloquentSluggable\Sluggable;

use Cviebrock\EloquentSluggable\SluggableScopeHelpers;

use Spatie\Activitylog\Traits\LogsActivity;


class Unit extends Model {

    use SluggableScopeHelpers;

    use Sluggable;

    use LogsActivity;


    protected $table = "units";

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
        'title','slug','image','author_id'
    ];

    protected static $logAttributes = ['title'];


    public function unit_equipment(){
        return $this->hasMany('App\Models\Unit','unit_id','id');
    }


}
