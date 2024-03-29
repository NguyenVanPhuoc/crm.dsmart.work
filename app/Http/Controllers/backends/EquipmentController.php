<?php
namespace App\Http\Controllers\backends;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Equipment;
use App\Models\Eqsupplie;
use App\Models\Provider;
use App\Models\User;
use App\Models\Cates;
use App\Models\Unit;
use App\Models\Department;
use App\Models\Device;
use App\Models\Supplie;
use App\Models\Action;
use App\Models\Project;
use Illuminate\Support\Facades\Validator;
use App\Exports\EquipmentsExport;
use App\Exports\EqsuppliesExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\EquipmentsImport;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Spatie\Activitylog\Models\Activity;
use Illuminate\Validation\Rule;
use App\Notifications\HanOverNotifications;
use Mail;
class EquipmentController extends Controller {
    public function index(Request  $request) {
        $user = Auth::user();
        if($user->can('equipment.read')){
            $keyword = isset($request->key) ? $request->key : '';
            $status = isset($request->status) ? $request->status : '';
            $departments_key = isset($request->department_key) ? $request->department_key : '';
            $cates_key = isset($request->cate_key) ? $request->cate_key : '';
            $devices_key = isset($request->device_key) ? $request->device_key : '';
            $department_name = Department::select('id','title')->get();
            $user_name = User::select('id','name')->get();
            $cate_name = Cates::select('id','title')->get();
            $device_name = Device::select('id','title')->get();
            $equipments = Equipment::query();
            $cur_time = Carbon::now()->format('Y-m-d');
            $order = '';
            $sort = '';
            if($keyword != ''){
                $equipments = $equipments->where(function ($query) use ($keyword) {
                $query->where('title','like','%'.$keyword.'%')
                    ->orWhere('code','like','%'.$keyword.'%')
                    ->orWhere('model','like','%'.$keyword.'%')
                    ->orWhere('serial','like','%'.$keyword.'%');
                });
            }
            if($status != ''){
                $equipments = $equipments->where('status',$status);
            }
            if($departments_key != ''){
                $equipments = $equipments->where('department_id',$departments_key);
            }
            if($cates_key != ''){
                $equipments = $equipments->where('cate_id',$cates_key);
            }
            if($devices_key != ''){
                $equipments = $equipments->where('devices_id',$devices_key);
            }
            if($request->sortByTitle && in_array($request->sortByTitle, ['asc','a'])){
                $equipments = $equipments->orderBy('title',$request->sortByTitle);
                $sort = 'sortByTitle';
                $order = $request->sortByTitle;
            }
            if($request->sortByModel && in_array($request->sortByModel, ['asc','desc'])){
                $equipments = $equipments->orderBy('model',$request->sortByModel);
                $sort = 'sortByModel';
                $order = $request->sortByModel;
            }
            if($request->sortBySeria && in_array($request->sortBySeria, ['asc','desc'])){
                $equipments = $equipments->orderBy('serial',$request->sortBySeria);
                $sort = 'sortBySeria';
                $order = $request->sortBySeria;
            }
            if($request->sortByStatus && in_array($request->sortByStatus, ['asc','desc'])){
                $equipments = $equipments->orderBy('status',$request->sortByStatus);
                $sort = 'sortByStatus';
                $order = $request->sortByStatus;
            }
            if($request->sortByCode && in_array($request->sortByCode, ['asc','desc'])){
                $equipments = $equipments->orderBy('code',$request->sortByCode);
                $sort = 'sortByCode';
                $order = $request->sortByCode;
            }
            if($request->sortByDepartment && in_array($request->sortByDepartment, ['asc','desc'])){
                $equipments = $equipments->orderBy('code',$request->sortByDepartment);
                $sort = 'sortByDepartment';
                $order = $request->sortByDepartment;
            }
            $equipments = $equipments->device()->orderBy('created_at', 'desc')->paginate(15);
                return view('backends.equipments.list',
                compact('equipments',
                'keyword',
                'sort','order',
                'status',
                'department_name','departments_key',
                'cate_name','cates_key',
                'device_name','devices_key',
                'user_name','cur_time',
                'user',
            ));
        }else{
            abort(403);
        }
    }
    public function indexMedical(Request  $request) {
        $user = Auth::user();
            $keyword = isset($request->key) ? $request->key : '';
            $status = isset($request->status) ? $request->status : '';
            $departments_key = isset($request->department_key) ? $request->department_key : '';
            $cates_key = isset($request->cate_key) ? $request->cate_key : '';
            $devices_key = isset($request->device_key) ? $request->device_key : '';
            $department_name = Department::select('id','title')->get();
            $user_name = User::select('id','name')->get();
            $cate_name = Cates::select('id','title')->get();
            $device_name = Device::select('id','title')->get();
            $equipments = Equipment::query();
            $order = '';
            $sort = '';
            if($keyword != ''){
                $equipments = $equipments->where(function ($query) use ($keyword) {
                $query->where('title','like','%'.$keyword.'%')
                    ->orWhere('code','like','%'.$keyword.'%')
                    ->orWhere('model','like','%'.$keyword.'%')
                    ->orWhere('serial','like','%'.$keyword.'%');
                });
            }
            if($status != ''){
                $equipments = $equipments->where('status',$status);
            }
            if($departments_key != ''){
                $equipments = $equipments->where('department_id',$departments_key);
            }
            if($cates_key != ''){
                $equipments = $equipments->where('cate_id',$cates_key);
            }
            if($devices_key != ''){
                $equipments = $equipments->whereHas('equipment_device', function($query) use ($devices_key) {
                    $query->where('device_id',$devices_key);
                });    
            }
            $equipments = $equipments->device()->where('department_id',$user->department_id)->paginate(15);
                return view('backends.equipments.mediacal',
                compact('equipments',
                'keyword',
                'sort','order',
                'status',
                'department_name','departments_key',
                'cate_name','cates_key',
                'device_name','devices_key',
                'user_name',
                'user',
            ));
    }
    public function indexGuarantee(Request  $request) {
            $keyword = isset($request->key) ? $request->key : '';
            $equipments = Equipment::query();
            if($keyword != ''){
                $equipments = $equipments->where(function ($query) use ($keyword) {
                $query->where('title','like','%'.$keyword.'%')
                    ->orWhere('code','like','%'.$keyword.'%')
                    ->orWhere('model','like','%'.$keyword.'%')
                    ->orWhere('serial','like','%'.$keyword.'%');
                });
            }
            $equipments = $equipments->orderBy('created_at', 'desc')->paginate(15);
            return view('backends.guarantees.list',compact('equipments','keyword'));
    }
    public function showHistory() {
        $user = Auth::user();
        if($user->can('history_status.read')){
            $activities = Activity::where("description","updated")
            ->where("subject_type","App\Models\Equipment")
            ->whereJsonContains('properties->attributes->type','devices')
            ->orderBy('created_at', 'desc')
            ->paginate(10);
            return view('backends.equipments.history',compact('activities'));  
        }else{
            abort(403);
        }  
    }
    public function destroyHistory($id){
        $user = Auth::user();
        if($user->can('history_status.delete')){
            $activities = Activity::findOrFail($id);
            $activities->delete();
            return redirect()->route('equipment.history')->with('success','Xóa thành công');
        }else{
            abort(403);
        }  
    }
    public function deleteChooseHistory(Request $request){
        $items = explode(",",$request->items);
        if(count($items)>0){
            $request->session()->flash('success', 'Xóa thành công!');
            Activity::destroy($items);
        }else{
            $request->session()->flash('error', 'Có lỗi!');
        }
        return redirect()->route('equipment.history');
    }
    public function show(Request $request ,$id) {
        $user = Auth::user();
        if($user->can('equipment.show')){
            $equipments = Equipment::findOrFail($id);
            $activities = Activity::where("subject_id",$equipments->id)->where("subject_type","App\Models\Equipment")->paginate(10);
            return view('backends.equipments.show', compact('equipments','activities'));
        }else{
            abort(403);
        } 
    }
    public function create(){
        $user = Auth::user();
        if($user->can('create', Equipment::class)) {
            $maintenances = Provider::select('id','title','type')->maintenance()->get();
            $providers = Provider::select('id','title','type')->provider()->get();
            $repairs = Provider::select('id','title','type')->repair()->get();
            $users = User::select('id','name')->get();
            $users_vt = User::select('id','name')->where('department_id',$user->department_id)->get();
            $cates = Cates::select('id','title')->get();
            $units = Unit::select('id','title')->get();
            $departments = Department::select('id','title')->get();
            $devices = Device::select('id','title')->get();
            $projects = Project::select('id','title')->get();
            $cur_day = Carbon::now()->format('Y-m-d'); 
            return view('backends.equipments.create',compact('maintenances',
                'providers',
                'repairs','users',
                'cates','units',
                'departments','devices',
                'projects',
                'cur_day','users_vt'
            ));
        }else{
          abort(403);
        }
    }
    public function createSupplie($id){
        $user = Auth::user();
        if($user->can('equipment.create_supplie')) {
            $equipments = Equipment::findOrFail($id);
            $maintenances = Provider::select('id','title','type')->maintenance()->get();
            $providers = Provider::select('id','title','type')->provider()->get();
            $repairs = Provider::select('id','title','type')->repair()->get();
            $users = User::select('id','name')->get();
            $units = Unit::select('id','title')->get();
            $departments = Department::select('id','title')->get();
            $supplies = Supplie::select('id','title')->get();
            $cur_day = Carbon::now()->format('Y-m-d'); 
            return view('backends.equipments.createsupplie',compact('maintenances',
            'providers','repairs',
            'users','units',
            'departments','supplies',
            'equipments','cur_day'
        ));
        }else{
          abort(403);
        }
    }
    public function storeSupplie(Request  $request)
    {
        $rules = [
            'title'=>'required',
            'supplie_id'=>'required',
            'amount'=>'unique:equipments,code',
            'unit_id'=>'required',
            'import_price'=>'required',
        ];
        $messages = [
            'title.required'=>'Vui lòng nhập tên thiết bị!',
            'supplie_id.required'=>'Vui lòng nhập loại vật tư!',
            'amount.unique'=>'Vui lòng nhập số lượng!',
            'unit_id.required'=>'Vui lòng nhập đơn vị tính!',
            'import_price.required'=>'Vui lòng nhập giá nhập!',
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()):
            return redirect()->back()->withErrors($validator)->withInput();
        else:           
        $atribute = $request->all();
        $eqsupplies = Eqsupplie::create($atribute);
        $eqsupplies->save();
        $eqsupplies->supplie_devices()->attach($request->supplie_devices,['note' => 'spelled_by_device','amount' => $request->used_amount,'user_id' => Auth::user()->id ]);
        if($eqsupplies){
            return redirect()->back()->with('success','Thêm thành công');
        }else{
            return redirect()->back()->with('success','Thêm không thành công');
        }
        endif;
    }
    public function store(Request  $request)
    {
        $rules = [
            'title'=>'required',
            'unit_id'=>'required',
            'amount'=>'required|numeric|min:0',
            'serial'=>'required|unique:equipments,serial',
            'code' =>'unique:equipments,code',
            'model'=>'required',
            'manufacturer' => 'required',
            'origin' => 'required',
            'year_manufacture' => 'required',
            'regular_inspection' => 'required',
            'first_value' => 'numeric|min:0|max:100',
            'depreciat' => 'numeric|min:0|max:100',
        ];
        $messages = [
            'title.required'=>'Vui lòng nhập tên thiết bị!',
            'unit_id.required'=>'Vui lòng nhập đơn vị tính!',
            'amount.unique'=>'Vui lòng nhập số lượng!',
            'code.unique'=>'Mã thiết bị đã tổn tại!',
            'amount.min'=>'Số lượng không được nhỏ hơn 0!',
            'serial.required'=>'Vui lòng nhập số serial !',
            'serial.unique'=>'Số serial đã tồn tại !',
            'model.required'=>'Vui lòng nhập model!',
            'manufacturer.required'=>'Vui lòng nhập hãng sản xuất!',
            'origin.required'=>'Vui lòng nhập xuất xứ!',
            'year_manufacture.required'=>'Vui lòng nhập năm sản xuất!',
            'regular_inspection.required'=>'Vui lòng nhập kiểm định định kỳ!',
            'first_value.min'=>'Giá trị ban đầu không được nhỏ hơn 0!',
            'first_value.max'=>'Giá trị ban đầu không được lớn hơn 100!',
            'depreciat.min'=>'Khấu hao hàng năm không được nhỏ hơn 0!',
            'depreciat.max'=>'Khấu hao hàng năm không được lớn hơn 100!',
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()):
            return redirect()->route('equipment.create')->withErrors($validator)->withInput();
        else:
        $atribute = $request->all();
        $atribute['type'] = 'devices';
        $atribute['status'] = 'not_handed';
        $equipments = Equipment::create($atribute);
        $cates = Cates::where('id',$request->cate_id)->select("id", "code")->first();
        $devices = Device::where('id',$request->devices_id)->select("id", "code")->first();
        $padded_cates = Str::padLeft(isset($cates->code) ? $cates->code :'', 1, 'X');
        $padded_devices = Str::padLeft(isset($devices->code) ? $devices->code :'', 6, 'X');
        $padded_equipments_id = Str::padLeft($equipments->id, 6, 'X');
        $newYear = Carbon::now()->format('dmY'); 
        $equipments['code'] = $padded_cates.'-'.$padded_devices.'-'.$newYear.'-'.$padded_equipments_id;
        $equipments->save();
        // Attachment
        $user = Auth::user();
        if($request->attachment && $request->attachment != '' && is_array(explode(',', $request->attachment))) {
            $attachments = array_filter(explode(',', $request->attachment));
            if(!$user->can('media.read')) {
                foreach ($attachments as $item) {
                    if(!$user->medias->contains($item)) $attachments = array_diff($attachments,[$item]);
                }                
            }
            $equipments->attachments()->attach($attachments);
        }
        $equipments->equipment_user_use()->attach($request->equipment_user_use);
        $equipments->equipment_user_training()->attach($request->equipment_user_training);
        if($equipments){
            return redirect()->route('equipment.index')->with('success','Thêm thành công');
        }else{
            return redirect()->route('equipment.index')->with('error','Thêm không thành công');
        }
        endif;
    }
    public function edit($id){
        $user = Auth::user();
        $equipments = Equipment::device()->with('attachments:id,title,path,type')->findOrFail($id);
        if($user->can('update', $equipments)) {
            $maintenances = Provider::select('id','title','type')->maintenance()->get();
            $providers = Provider::select('id','title','type')->provider()->get();
            $repairs = Provider::select('id','title','type')->repair()->get();
            $users = User::select('id','name')->get();
            $cates = Cates::select('id','title')->get();
            $units = Unit::select('id','title')->get();
            $departments = Department::select('id','title')->get();
            $devices = Device::select('id','title')->get();
            $projects = Project::select('id','title')->get();
            $cur_day = Carbon::now()->format('Y-m-d'); 
            $users_vt = User::select('id','name')->where('department_id',$user->department_id)->get();
            $array_user_use = $equipments->equipment_user_use->pluck('id')->toArray();
            $array_user_training = $equipments->equipment_user_training->pluck('id')->toArray();
            return view('backends.equipments.edit',compact('equipments',
            'maintenances','providers',
            'repairs','users',
            'cates','units',
            'departments','devices',
            'array_user_use','array_user_training',
            'projects',
            'cur_day',
            'users_vt'
        ));
        }else{
            abort(403);
        }
    }
    public function update(Request  $request , $id)
    {
        $equipments = Equipment::findOrFail($id);
        $rules = [
            'title'=>'required',
            'unit_id'=>'required',
            'amount'=>'required|numeric|min:0',
            // 'serial'=>[serial,Rule::unique('equipments')->ignore($equipments->serial)],
            // 'code'=>[Rule::unique('equipments')->ignore($equipments->code)],
            'model'=>'required',
            'manufacturer' => 'required',
            'origin' => 'required',
            'year_manufacture' => 'required',
            'regular_inspection' => 'required',
            'first_value' => 'numeric|min:0|max:100',
            'depreciat' => 'numeric|min:0|max:100',
        ];
        $messages = [
            'title.required'=>'Vui lòng nhập tên thiết bị!',
            'unit_id.required'=>'Vui lòng nhập đơn vị tính!',
            'amount.min'=>'Số lượng không được nhỏ hơn 0!',
            'serial.required'=>'Vui lòng nhập số serial !',
            'serial.unique'=>'Số serial đã tồn tại !',
            'code.unique'=>'Mã thiết bị đã tồn tại !',
            'model.required'=>'Vui lòng nhập model!',
            'manufacturer.required'=>'Vui lòng nhập hãng sản xuất!',
            'origin.required'=>'Vui lòng nhập xuất xứ!',
            'year_manufacture.required'=>'Vui lòng nhập năm sản xuất!',
            'regular_inspection.required'=>'Vui lòng nhập kiểm định định kỳ!',
            'first_value.min'=>'Giá trị ban đầu không được nhỏ hơn 0!',
            'first_value.max'=>'Giá trị ban đầu không được lớn hơn 100!',
            'depreciat.min'=>'Khấu hao hàng năm không được nhỏ hơn 0!',
            'depreciat.max'=>'Khấu hao hàng năm không được lớn hơn 100!',
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()):
            return redirect()->route('equipment.edit',$id)->withErrors($validator)->withInput();
        else:
        $atribute = $request->all();
        $equipments->update($atribute);
        $cates = Cates::where('id',$request->cate_id)->select("id", "code")->first();
        $devices = Device::where('id',$request->devices_id)->select("id", "code")->first();
        $padded_cates = Str::padLeft(isset($cates->code) ? $cates->code :'', 1, 'X');
        $padded_devices = Str::padLeft(isset($devices->code) ? $devices->code :'', 6, 'X');
        $padded_equipments_id = Str::padLeft($equipments->id, 6, 'X');
        $newYear = Carbon::now()->format('dmY'); 
        $equipments['code'] = $padded_cates.'-'.$padded_devices.'-'.$newYear.'-'.$padded_equipments_id;
        $equipments->save();
        $user = Auth::user();
        if($request->attachment && $request->attachment != '' && is_array(explode(',', $request->attachment))) {
            $attachments = array_filter(explode(',', $request->attachment));
            if(!$user->can('media.read')) {
                foreach ($attachments as $item) {
                    if(!$user->medias->contains($item)) $attachments = array_diff($attachments,[$item]);
                }                
            }     
            $equipments->attachments()->sync($attachments);
        }else $equipments->attachments()->sync(array());
        $equipments->equipment_user_use()->sync($request->equipment_user_use);
        $equipments->equipment_user_training()->sync($request->equipment_user_training);
        if($equipments){
            if($equipments->wasChanged())
                return redirect()->route('equipment.edit',$id)->with('success','Cập nhật thành công');
            else 
                return redirect()->route('equipment.edit',$id);        
        }else{
            return redirect()->route('equipment.edit',$id)->with('error','Cập nhật không thành công');
        }
    endif;
    }
    public function updateHandOver(Request  $request , $id)
    {
        $rules = [
            'department_id'=>'required',
            'officer_charge_id_device'=>'required',
        ];
        $messages = [
            'department_id.required'=>'Vui lòng nhập khoa phòng ban !',
            'officer_charge_id_device.required'=>'Vui lòng chọn người phụ trách khoa !',
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()):
            return redirect()->back()->withErrors($validator)->withInput();
        else:
        $equipments = Equipment::findOrFail($id);
        $equipments->department_id = $request->department_id;
        $equipments->officer_department_charge_id = $request->officer_department_charge_id;
        $equipments['status']  = "active";
        $equipments->save();
        //notify
        $roles = ['admin','nvkp','Nvpvt','Ddt','TK','TPVT'];
        $array_user = User::role($roles)->pluck('id')->toArray();
            if($array_user != null){
                foreach ($array_user as $key => $value) {
                    $user = User::findOrFail($value);
                    $user->notify(new HanOverNotifications($equipments));
                }
        }
        if($equipments){
            if($equipments->wasChanged())
                return redirect()->back()->with('success','Đã bàn giao thiết bị '.$equipments->title.' ');
            else 
                return redirect()->back();
        }else{
            return redirect()->back()->with('error','Cập nhật không thành công');
        }
    endif;
    }
    public function selectHandOver(Request $request ){
        $users = User::select('id','name','department_id')->where('department_id', $request->id)->get();
        $html = '<select  class="select2 form-control" name="officer_charge_id_device">';
        if($users) {
            foreach($users as $item) {
        $html .= '<option value="'.$item->id.'">'.$item->name.'</option>';
            }
        }
        return response()->json([
            'check' => 'true',
            'html' => $html,
        ]);
    }
    public function updateCorrected(Request  $request , $id)
    {
        $equipments = Equipment::findOrFail($id);
        $equipments->status = $request->status;
        $equipments->save();
        if($equipments){
            if($equipments->wasChanged('status'))
                return redirect()->back()->with('success','Cập nhật thành công');
            else 
                return redirect()->back();
        }else{
            return redirect()->back()->with('error','Cập nhật không thành công');
        }
    }
    public function updateInactive(Request  $request , $id)
    {
        $equipments = Equipment::findOrFail($id);
        $equipments['status']  = "liquidated";
        $equipments->save();
        if($equipments){
            activity()->causedBy(Auth::user())->performedOn($equipments)->log('inactive');
            if($equipments->wasChanged('status'))
                return redirect()->back()->with('success','Cập nhật thành công');
            else 
                return redirect()->back();
        }else{
            return redirect()->back()->with('error','Cập nhật không thành công');
        }
    }
    public function updateWasBroken(Request  $request , $id)
    {
        $equipments = Equipment::findOrFail($id);
        $equipments['status'] = "was_broken";
        $equipments->save();
        if($equipments){
            if($equipments->wasChanged('status')){
                $equipments->update($request->only('date_failure','reason'));
                $user = Auth::user();
                $content = '';
                $content .='<div> Thiết bị '.$equipments->title.' đã được báo hỏng </div>';
                $data = array( 'email' =>'phongvtyt2020@gmail.com', 'from' => $user->email, 'content' => $content);
                Mail::send( 'mails.fail', compact('data'), function( $message ) use ($data){
                        $message->to($data['email'])
                        ->from( $data['from'], '[CRM]');
                });
                return redirect()->back()->with('success','Đã báo hỏng thiết bị '. $equipments->title );
            }else{
                return redirect()->back()->with('error','Thiết bị '. $equipments->title .' đã được báo hỏng' );
            }
        }else{
            return redirect()->back()->with('error','Cập nhật không thành công');
        }
    }
    public function updateWasBrokenDevice(Request  $request , $id)
    {
        $equipments = Equipment::findOrFail($id);
        $equipments['status']  = "corrected";
        $equipments->save();
        if($equipments){
            if($equipments->wasChanged('status'))
                return redirect()->back()->with('success','Cập nhật thành công');
            else 
                return redirect()->back()->with('error','Cập nhật không thành công');
        }else{
            return redirect()->back()->with('error','Cập nhật không thành công');
        }
    }
    public function destroy($id){
        $user = Auth::user();
        $equipments = Equipment::findOrFail($id);
        if ($user->can('delete', $equipments)) {
            $equipments->attachments()->detach();
            $equipments->delete();
            return redirect()->route('equipment.index')->with('success','Xóa thành công');
        }else{
            abort(403);
        }
    }
    public function select(Request $request ){
        $devices = Device::select('id','title','cat_id')->where('cat_id', $request->id)->get();
        $html_devices = '<label class="control-label">'.__('Loại thiết bị').' <small></small></label>';
        $html_devices .= '<select  class="select2 form-control" name="devices_id">';
        if($devices) {
            foreach($devices as $item) {
        $html_devices .= '<option value="'.$item->id.'">'.$item->title.'</option>';
            }
        }
        $users = User::select('id','name','department_id')->where('department_id', $request->id)->get();
        $html_officer_department_charge_device = '<label class="control-label">'.__('CB khoa phòng phụ trách').' <small></small></label>';
        $html_officer_department_charge_device .= '<select  class="select2 form-control" name="officer_department_charge_id">';
        if($users) {
            foreach($users as $item) {
        $html_officer_department_charge_device .= '<option value="'.$item->id.'">'.$item->name.'</option>';
            }
        }
        $user_use = User::select('id','name','department_id')->get();
        $html_user_use_device = '<label class="control-label">'.__('CB sử dụng').'</label>';
        $html_user_use_device .= '<select  class="select2 form-control" name="equipment_user_use[]"  multiple="multiple">';
        if($user_use) {
            foreach($user_use as $item) {
            $html_user_use_device .= '<option value="'.$item->id.'"'.(($item->department_id == $request->id ? ' selected' : '')).'>'.$item->name.'</option>';
            }
        }
        $html_user_training_device = '<label class="control-label">'.__('CB được đào tạo').'</label>';
        $html_user_training_device .= '<select  class="select2 form-control" name="equipment_user_training[]"  multiple="multiple">';
        if($user_use) {
            foreach($user_use as $item) {
            $html_user_training_device .= '<option value="'.$item->id.'"'.(($item->department_id == $request->id ? ' selected' : '')).'>'.$item->name.'</option>';
            }
        }
        return response()->json([
            'check' => 'true',
            'html_devices' => $html_devices,
            'html_officer_department_charge_device' => $html_officer_department_charge_device,
            'html_user_use_device' => $html_user_use_device,
            'html_user_training_device' => $html_user_training_device
        ]);
    }
    public function export() {
        $user = Auth::user();
        if($user->can('equipment.export')) {
            return Excel::download(new EquipmentsExport, 'Danh sách thiết bị ' . Carbon::now()->format('d-m-Y') . '.xlsx');
        }else{
            abort(403);
        }
    }
    public function import(Request $request) 
    {   
        $rules = [
            'department_id'=>'required',
            'status'=>'required',
        ];
        $messages = [
            'department_id.required'=>'Vui lòng chọn khoa - phòng ban!',
            'status.required'=>'Vui lòng chọn trạng thái!',
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()){ 
            return redirect()->route('equipment.listimport')->withErrors($validator)->withInput();
        }
        else{
            if($request->hasFile('equipment_file')){
                $department_id = $request->department_id;
                $status = $request->status;
                $import = new EquipmentsImport;
                $import = Excel::import($import, request()->file('equipment_file'));
                if($import){
                    return redirect()->route('equipment.listimport')->with('success','Import thành công');
                }else{
                    return redirect()->route('equipment.listimport')->with('error','Import không thành công');
                }
            }
        }
    }
    public function listImport(){
        $user = Auth::user();
        if($user->can('imports.equipment')){
            $departments = Department::select('id','title')->get();
            return view('backends.equipments.listimport',compact('departments'));
        }else{
            abort(403);
        }
    }
}