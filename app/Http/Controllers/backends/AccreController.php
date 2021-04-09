<?php
namespace App\Http\Controllers\backends;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Department;
use App\Models\Equipment;
use App\Models\Cates;
use App\Models\Device;
use App\Models\Maintenance;
use App\Models\User;
use App\Models\Accre;
use Carbon\Carbon;
class AccreController extends Controller {

    public function index(Request  $request) {
        $user = Auth::user();
        $equipments = Equipment::query();
        $keyword = isset($request->key) ? $request->key : '';
        $inspections_key = isset($request->inspection) ? $request->inspection : '';
        if($user->can('eqaccre.read')){
            if($inspections_key != ''){
                $equipments = $equipments->where('regular_inspection',$inspections_key);
            }
        }else{
            $equipments = $equipments->where('user_id',$user->id);
            if($inspections_key != ''){
                $equipments = $equipments->where('regular_inspection',$inspections_key);
            }
        }
        if($keyword != ''){
            $equipments = $equipments->where(function ($query) use ($keyword) {
            $query->where('title','like','%'.$keyword.'%')
                ->orWhere('code','like','%'.$keyword.'%')
                ->orWhere('model','like','%'.$keyword.'%')
                ->orWhere('serial','like','%'.$keyword.'%');
            });
        }
        $equipments = $equipments->device()->orderBy('created_at', 'desc')->paginate(15);
            return view('backends.accres.list',compact('equipments','keyword','inspections_key'));
    }

    public function store(Request $request,$id){
        $rules = [

        ];
        $messages = [
          
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()):
            return redirect()->back()->withErrors($validator)->withInput();
        else:
            $equipments = Equipment::findOrFail($id);
            $atribute = $request->all();
            $atribute['equipment_id'] =  $equipments->id;
            Accre::create($atribute);
            return redirect()->route('accre.index')->with('success','Thêm thành công');
        endif;
    }

    public function edit($id){
        $equipments = Equipment::findOrFail($id);
        return view('backends.accres.edit',compact('equipments'));
    }


}