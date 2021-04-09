@extends('backends.templates.master')
@section('title', __('Nhật ký hoạt động'))
@section('content')
@php 
$statusEquipments = get_statusEquipments();
@endphp
<div id="list-events" class="content-wrapper events">
   <section class="content">
      <div class="head container">
         <h1 class="title">{{ __('Nhật ký hoạt động') }}</h1>
      </div>
      <div class="main">
         <div class="row search-filter">
            <div class="col-md-6 filter">
               <ul class="nav-filter">
                  <li class="active"><a href="{{ route('admin.index_activity') }}">{{ __('Tất cả') }}</a></li>
               </ul>
            </div>
            <div class="col-md-6 search-form">
               <form  action="{{ route('admin.index_activity') }}" method="GET">
                  <div class="row">
                     <div class="col-md-8 s-key">
                        <input type="text" name="key" class="form-control s-key" placeholder="{{__('Nhập từ khóa')}}" value="{{ $keyword }}">
                     </div>
                     <div class="col-md-4">
                        <select class="form-control select2"  name="user_key">
                                 <option value="" > Tất cả người dùng </option>                  
                                 @foreach ($user_name as $user)
                                    <option value="{{ $user->id }}" {{ $users_key ==  $user->id ? 'selected' : '' }} >{{ $user->name }}</option>
                                 @endforeach 
                        </select>   
                     </div>              
                     <button type="submit" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
                  </div>
               </form>
            </div>
         </div>
         <div class="card">
            <div class="card-body p-0">
               @include('notices.index')
               <form class="dev-form" action="{{ route('admin.deleteChooseActivity') }}" name="listEvent" method="POST">
                  @csrf
                  <table class="table table-striped projects">
                     <thead class="thead">
                        <tr>
                           <th id="check-all" class="check"><input type="checkbox" name="checkAll"></th>
                           <th>{{ __('Người thao tác') }}</th>
                           <th>{{ __('Chức năng') }}</th>
                           <th>{{ __('Thao tác') }}</th>
                           <th>{{ __('Nội dung') }}</th>
                           <th>{{ __('Thời gian') }}</th>
                           <th class="action"></th>
                        </tr>
                     </thead>
                     <tbody class="tbody">
                        @if(!$activities->isEmpty())
                        @foreach($activities as $key => $activity)
                     <tr>
                        <td class="check"><input type="checkbox" name="checkbox[]" value="{{$activity->id}}"></td>
                        <td>{{ isset($activity->causer['name']) ? $activity->causer['name'] :''}}</td>
                        @if( $activity->subject_type  == "App\Models\Equipment" )
                        <td>
                           Danh sách thiết bị
                        </td>
                        @elseif($activity->subject_type  == "App\Models\Eqsupplie")
                        <td>
                           Danh sách vật tư
                        </td>
                        @elseif( $activity->subject_type  == "App\Models\Department")
                        <td>
                           Khoa - Phòng Ban
                        </td>
                        @elseif( $activity->subject_type  == "App\Models\Cates")
                        <td>
                           Nhóm thiết bị
                        </td>
                        @elseif( $activity->subject_type  == "App\Models\Device")
                        <td>
                           Loại thiết bị
                        </td>
                        @elseif( $activity->subject_type  == "App\Models\Supplie")
                        <td>
                           Loại vật tư
                        </td>
                        @elseif( $activity->log_name  == "login")
                        <td>
                           Đăng nhập hệ thống
                        </td>
                        @elseif( $activity->subject_type  == "App\Models\User")
                        <td>
                           Thành viên
                        </td>
                        @elseif( $activity->subject_type  == "App\Models\Unit")
                        <td>
                           Đơn vị tính
                        </td>
                        @elseif( $activity->subject_type  == "App\Models\Project")
                        <td>
                           Dự án
                        </td>
                        @elseif( $activity->subject_type  == "App\Models\Provider" && $activity->subject['type'] == "providers")
                        <td>
                           Nhà cung cấp 
                        </td>
                        @elseif( $activity->subject_type  == "App\Models\Provider" && $activity->subject['type'] == "maintenances")
                        <td>
                           Đơn vị bảo trì 
                        </td>
                        @elseif( $activity->subject_type  == "App\Models\Provider" && $activity->subject['type'] == "repairs")
                        <td>
                           Đơn vị sửa chữa 
                        </td>
                        @else 
                        <td></td>
                        @endif
                        <td>{{ $activity->description}}</td>
                        @if( $activity->description == "deleted")
                        <td> 
                           đã xóa : <span class="history-font"> {{ isset($activity->changes['attributes']['title']) ? $activity->changes['attributes']['title'] : (isset($activity->changes['attributes']['name']) ? $activity->changes['attributes']['name'] :'') }} </span> 
                        </td> 
                        @elseif ($activity->description == "created")
                        <td> 
                           thêm mới : <span class="history-font"> {{ isset($activity->changes['attributes']['title']) ?  $activity->changes['attributes']['title'] : (isset($activity->changes['attributes']['name']) ? $activity->changes['attributes']['name'] :'') }} </span> 
                        </td> 
                        @elseif ($activity->description == "updated")
                        <td>
                           cập nhật : <span class="history-font"> {{ isset($activity->changes['attributes']['title']) ?  $activity->changes['attributes']['title'] : (isset($activity->changes['attributes']['name']) ? $activity->changes['attributes']['name'] : 'null') }} </span> 
                        </td>
                        @elseif ($activity->description == "login" )
                        <td>
                           đăng nhập : <span class="history-font"> {{ isset($activity->causer['name']) ? $activity->causer['name'] :'' }} </span>  
                        </td>
                        @else 
                        <td></td>
                        @endif
                        <td>{{ $activity->created_at}}</td>
                        <td>  
                           <a class="btn btn-danger btn-sm" href="{{ route('admin.destroyActivity',$activity->id ) }}" data-toggle="modal" data-target="#sideModal" data-direct="modal-top-right"><i class="fas fa-trash"></i>{{__('Xóa')}}</a>
                        </td>
                     </tr>
                        @endforeach
                        @else
                        <tr>
                           <td colspan="8">{{ __('No items!') }}</td>
                        </tr>
                        @endif
                     </tbody>
                  </table>
                  <div class="float-right">
                     {{$activities->links()}}
                  </div>
               </form>
            </div>
         </div>
      </div>
   </section>
   <!-- /.content -->
</div>
<!-- Side Modal Top Right -->
@include('modals.modal_delete')
@include('modals.modal_deleteChoose')
@endsection