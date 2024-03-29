@extends('backends.templates.master')
@section('title', __('Báo cáo bảng kê thanh lý thiết bị'))
@section('content')
@php
   $data = [];
   if($keyword!="") $data['key'] = $keyword;
   if($departments_id!="") $data['departments_id'] = $departments_id;
   if($startDate!="") $data['startDate'] = $startDate;
   if($status_key!="") $data['status_key'] = $status_key;
   if($endDate!="") $data['endDate'] = $endDate;
   $status = getStatusLiquidation();
@endphp
<div id="list-departments" class="content-wrapper departments">
   <section class="content">
      <div class="head container">
         <h1 class="title">{{ __('Báo cáo bảng kê thanh lý thiết bị') }}</h1>
      </div>
      <div class="main">
         <div class="row search-filter">
            <div class="col-md-2 filter">
               <ul class="nav-filter">
                  <li class=""><a class="btn btn-success" style="color: #fff;" href="{{ route('general.exportLiquidations',['departments_id'=>$departments_id, 'startDate'=>$startDate, 'endDate'=>$endDate, 'key'=>$keyword, 'status_key'=>$status_key]) }}"><i class="far fa-file-excel"></i> {{ _('Xuất Excel') }}</a></li>
               </ul>
            </div>
            <div class="col-md-10 search-form">        
               <form  id="departments-form" action="" method="GET">
                  <div class="row">          
                     <div class="col-md-3">
                        <select class="form-control select2"  name="departments_id">
                           <option value=""> Khoa - Phòng</option>                  
                           @foreach ($departments as $department)
                              <option value="{{ $department->id }}" {{ $department->id == $departments_id ? 'selected' : ''}}>{{ $department->title }}</option>
                           @endforeach 
                        </select>   
                     </div>
                     <div class="col-md-2">
                        <input name="startDate" type="date" class="form-control" value="{{ $startDate }}" >
                     </div>
                     <div class="col-md-2">
                        <input name="endDate" type="date" class="form-control" value="{{ $endDate }}" >
                     </div>
                     <div class="col-md-2">
                        <select class="form-control select2"  name="status_key">
                           <option value=""> Trạng thái </option>                  
                           @foreach ($status as $key => $item)
                              <option value="{{ $key }}" {{ $key == $status_key ? 'selected' : ''}}>{{ $item }}</option>
                           @endforeach 
                        </select>   
                     </div>
                     <div class="col-md-3 s-key">
                        <input type="text" name="key" class="form-control s-key" placeholder="{{__('Nhập tên thiết bị')}}" value="{{ $keyword}}">
                     </div>
                     <button type="submit" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
                  </div>
               </form>
            </div>
         </div>
         <div class="card">
            <div class="card-body p-0">
               @include('notices.index')
               <div class="table-responsive">
                  <table class="table table-striped table-bordered" role="table">
                     <thead class="thead">
                        <tr class="text-center">
                           <th class="stt">{{ __('STT') }}</th>
                           <th>{{ __('Khoa') }}</th>
                           <th>{{ __('Mã TB') }}</th>
                           <th>{{ __('Tên TB') }}</th>
                           <th>{{ __('ĐVT') }}</th>
                           <th>{{ __('Model') }}</th>
                           <th>{{ __('S/N') }}</th>
                           <th>{{ __('Trạng thái') }}</th>
                           <th>{{ __('Lý do') }}</th>
                           <th>{{ __('Người tạo') }}</th>
                           <th>{{ __('Số lượng') }}</th>
                        </tr>
                     </thead>
                     <tbody class="tbody">
                        @if(!$liquidations->isEmpty())
                           @foreach($liquidations as $key => $liqui)
                              <tr class="text-center">
                                 <td>{{ ++$key}}</td>
                                 <td>{{ isset($liqui->equipment->equipment_department) ? $liqui->equipment->equipment_department->title : '-' }}</td>
                                 <td>{{ isset($liqui->equipment) ? $liqui->equipment->code : '-' }}</td>
                                 <td>{{ isset($liqui->equipment) ? $liqui->equipment->title : '-' }}</td>
                                 <td>{{ isset($liqui->equipment->equipment_unit)? $liqui->equipment->equipment_unit->title : '-' }}</td>
                                 <td>{{ isset($liqui->equipment) ? $liqui->equipment->model : '-'}}</td>
                                 <td>{{ isset($liqui->equipment) ? $liqui->equipment->serial : '-' }}</td>
                                 <td class="status-color"><span class="btn btn-status">{{ $status[$liqui->status] }}</span></td>
                                 <td>{{ $liqui->reason != null ? $liqui->reason : '-' }}</td>
                                 <td>{{ isset($liqui->user) ? $liqui->user->name : '-' }}</td>
                                 <td>{{ $liqui->amount != null ? $liqui->amount : '0' }}</td>
                              </tr>
                           @endforeach  
                        @else
                        <tr>
                           <td colspan="10">{{ __('No items!') }}</td>
                        </tr>
                        @endif
                     </tbody>
                  </table>
               </div>
               <form action="{{ route('general.liquidations') }}" class="equipments" name="equipments_department" method="GET">
                  <div class="flex-load-page">
                     <div class="per-page-vp has-select graybg">
                        <div class="list-per-page">
                           <span class="value chose-value" data-value="10" >{{ __('Hiển thị từ trang 1 đến')}} {{ $number > $total ? $total : $number }} {{ __('của')}} {{ $total }} {{ __('bản ghi') }}</span>
                           <select name="per_page">
                              <option value="10">10</option>
                              <option value="25" {{ $number == 25 ? 'selected' : ''}}>25</option>
                              <option value="50" {{ $number == 50 ? 'selected' : ''}}>50</option>
                              <option value="100"{{ $number == 100 ? 'selected' : ''}}>100</option>
                           </select>
                            <span>{{  __('bản ghi mỗi trang')}} </span>
                        </div>
                     </div>
                     {{ $liquidations->appends($data)->links() }}
                  </div>
               </form>
            </div>
         </div>
      </div>
   </section>
   <!-- /.content -->
</div>

@endsection