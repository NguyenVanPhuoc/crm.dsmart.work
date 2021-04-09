@extends('backends.templates.master')
@section('title',__('Hồ sơ thiết bị'))
@section('content')
@php 
$statusEquipments = get_statusEquipments();
$get_statusRisk = get_statusRisk();
@endphp
<div class="content-wrapper">
    <section class="content">
        <div class="container">
            <div class="head">
                <a href="{{ route('equipment.index') }}" class="back-icon"><i class="fas fa-angle-left" aria-hidden="true"></i>{{ __('All') }}</a>
                <h1 class="title">{{ __('Hồ sơ thiết bị') }}</h1>
                <a href="{{ route('equipment.show',$equipments->id)  }}" class="btnprn btn float-right"> <i class="fas fa-print"></i> Xuất bản </a>
            </div>
            <div class="main">
                @include('notices.index')
                <form action="" class="dev-form" method="POST" data-toggle="validator" role="form">
                    @csrf
                    <div class="row">
                        <div class="col-md-9">
                        <h4>{{ __('Thiết bị') }} : <span  class="font-weight-bold"> {{ $equipments->title}} </span> </h4>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th scope="row">{{ __('Khoa - Phòng Ban') }} :</th>
                                    <td>     
                                        {{ isset($equipments->equipment_department->title) ? $equipments->equipment_department->title :''}}
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">{{ __('Mã thiết bị') }} :</th>
                                    <td>{{  $equipments->code }}</td>
                                    <th scope="row">{{ __('Số serial') }} :</th>
                                    <td>{{  $equipments->serial }}</td>
                                </tr>
                    
                                <tr>
                                    <th scope="row">{{ __('Ngày kiểm định lần đầu') }} :</th>
                                    <td>{{  $equipments->first_inspection }}</td>
                                    <th scope="row">{{ __('Ngày nhập kho') }} :</th>
                                    <td>{{  $equipments->warehouse }}</td>
                                </tr>
                                <tr>
                                    <th scope="row">{{ __('Ngày nhập thông tin') }} :</th>
                                    <td>{{  $equipments->first_information }}</td>
                                    <th scope="row">{{ __('Ngày hết hạn bảo hành')}} :</th>
                                    <td>{{  $equipments->warranty_date }}</td>
                                </tr>
                                <tr>
                                    <th scope="row">{{ __('Ghi chú') }} :</th>
                                    <td>{{  $equipments->note }}</td>
                                </tr>
                            </tbody>
                            </table>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>{{ __('Thời gian') }}</th>
                                        <th>{{ __('Hoạt động - Tình trạng') }}</th>
                                        <th>{{ __('Thực hiện') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @if($activities)
                                    @if(!$activities->isEmpty())
                                        @foreach($activities as $item)
                                        <tr> 
                                            <td>
                                                {{ $item->created_at }}
                                            </td>  
                                            <td>
                                                @if($item->description == "created")
                                                    Nhập mới thiết bị : {{ isset($item->changes['attributes']['title']) ?  $item->changes['attributes']['title'] : 'Null' }}
                                                @elseif($item->description == "updated")
                                                    Thiết bị được bàn giao từ 
                                                    <span class="history-font"> {{ isset($item->changes['old']['department_id']) ? getDepartmentById($item->changes['old']['department_id']) : 'Null' }}</span>  
                                                    sang  
                                                    <span class="history-font">{{ isset($item->changes['attributes']['department_id']) ? getDepartmentById($item->changes['attributes']['department_id']) :'' }}</span>
                                                @elseif($item->description == "inactive")
                                                    "Thiết bị đã được báo hỏng"
                                                @else
                                                @endif
                                            </td>
                                            <td>
                                                Nhân viên khoa : {{ isset($item->causer->user_department->title) ? $item->causer->user_department->title :''}}
                                            </td>
                                        </tr>
                                        @endforeach
                                        @else
                                        <tr>
                                        <td colspan="15">{{ __('No items!') }}</td>
                                        </tr>
                                        @endif
                                     @endif
                                </tbody>
                            </table>   
                            </table>
                            <h4>{{ __('Thống kê lịch sử sửa chữa') }} </h4>
                            @php $repairs = isset($equipments->action_repair) ? $equipments->action_repair : false;  @endphp
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>{{ __('Người nhập') }}</th>
                                        <th>{{ __('Lý do') }}</th>
                                        <th>{{ __('Nội dung') }}</th>
                                        <th>{{ __('Thời gian') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if($repairs)
                                    @if(!$repairs->isEmpty())
                                        @foreach($repairs as $item)
                                        <tr> 
                                            <td>
                                                {{ isset($item->action_user->name) ? $item->action_user->name :'' }}
                                            </td>
                                            <td>
                                                {!! $item->reason !!}

                                            </td>
                                            <td>
                                                {!! $item->content !!}
                                            </td>
                                            <td>
                                                {!! $item->created_at !!}
                                            </td>  
                                        </tr>
                                        @endforeach
                                        @else
                                        <tr>
                                        <td colspan="15">{{ __('No items!') }}</td>
                                        </tr>
                                        @endif
                                     @endif
                                </tbody>
                            </table>      
                        </div>
                        <div class="col-md-3">
                            <aside id="sb-image" class="card card-outline card-info">
                                <div class="card-header">
                                    <h3 class="card-title">{{ __('Ảnh đại diện') }}</h3>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div id="frm-avatar" class="img-upload">
                                        <div class="image">
                                            <a href="{{ route('popupMediaAdmin') }}" class="library"><i class="fa fa-edit" aria-hidden="true"></i></a>
                                            {!! image($equipments->image,230,230,__('Avatar')) !!}
                                            <input type="hidden" name="image" class="thumb-media" value="{{ $equipments->image }}"/>
                                        </div>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>
@include('backends.media.library')
@endsection