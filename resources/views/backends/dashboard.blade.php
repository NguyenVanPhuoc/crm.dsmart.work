@extends('backends.templates.master')
@section('title', __('Dashboard'))
@section('content')
<div class="content-wrapper">
   <section class="content">
      <div class="container-fluid">
         <div class="head">
            <h1 class="title">{{ __('Dashboard') }}</h1>
         </div>
         <div class="main">
            <div class="search-form">
               <form action="{{ route('admin.dashboard') }}" method="GET">
                  <div class="row align-items-center">
                     <div class="col-6"></div>
                     <div class="col-2">
                        <div class="form-group mb-0">
                           <select class="select2 form-control" name="depart_id">
                              <option value=""{{ $depart_id == '' ? ' selected' : '' }}>{{ __('Tất cả các khoa') }}</option>
                              @if($departments)
                                 @foreach($departments as $item)
                                    <option value="{{ $item->id }}"{{ $depart_id == $item->id ? ' selected' : '' }}>{{ $item->title }}</option>
                                 @endforeach
                              @endif
                           </select>
                        </div>
                     </div>
                     <div class="col-2">
                        <div class="form-group mb-0">
                           <select class="select2 form-control" name="status">
                              <option value=""{{ $status == '' ? ' selected' : '' }}>{{ __('Tất cả trạng thái') }}</option>
                              @if($statuses)
                                 @foreach($statuses as $key => $item)
                                    <option value="{{ $key }}"{{ $status == $key ? ' selected' : '' }}>{{ $item }}</option>
                                 @endforeach
                              @endif
                           </select>
                        </div>
                     </div>
                     <div class="col-2">
                        <div class="form-group mb-0">
                           <select class="select2 form-control" name="type">
                              <option value=""{{ $type == '' ? ' selected' : '' }}>{{ __('Tất cả loại thiết bị') }}</option>
                              @if($equip_types)
                                 @foreach($equip_types as $key => $item)
                                    <option value="{{ $key }}"{{ $type == $key ? ' selected' : '' }}>{{ $item }}</option>
                                 @endforeach
                              @endif
                           </select>
                        </div>
                     </div>
                     <button type="submit" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
                  </div>
               </form>
            </div>
            <div class="p-3">
               <h4>{!! __('Thống kê theo ').$title.' <small>('.array_sum($equipments).' thiết bị)</small>' !!}</h4>
               @if($statuses)
                  <div class="row align-items-center">
                     @foreach($statuses as $key => $item)
                        <div class="col">
                           <div class="small-box text-center bg-white">
                              <div class="inner">
                                 {!! image($logo, 40, 40, 'Logo') !!}
                                 <p class="mt-2">{{ $item.': '.$equipments_graph[$key] }}</p>
                              </div>
                           </div>
                        </div>
                     @endforeach
                  </div>
               @endif
               <div class="row">
                  <div class="col-lg-6 connectedSortable">
                     <div class="card">
                        <div class="card-header">
                           <h3 class="card-title"><i class="fas fa-chart-pie mr-1"></i><strong>{!! __('Thống kê theo trạng thái').' - '.$title.' - '.$title_type.' <small>('.array_sum($equipment_stt_graph).' thiết bị)</small>' !!}</strong></h3>
                        </div>
                        <div class="card-body">
                           <div class="chart" style="position: relative; height: 400px;" data="{{ implode(',',array_values($equipment_stt_graph)) }}" data-label="{{ implode(',',array_values($statuses)) }}" data-colors="{{ implode(',',['#7cb5ec', '#434348', '#90ed7d', '#f7a35c', '#8085e9', '#f15c80', '#e4d354', 'gray']) }}">
                              <canvas id="statistics-doughnut-status" class="doughnut-canvas" height="300" style="height: 400px;"></canvas>                         
                           </div> 
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-6 connectedSortable">
                     <div class="card">
                        <div class="card-header">
                           <h3 class="card-title"><i class="fas fa-chart-pie mr-1"></i><strong>{!! __('Thống kê theo loại thiết bị').' - '.$title.' - '.$title_stt.' <small>('.array_sum($equipments_graph_type).' thiết bị)</small>' !!}</strong></h3>
                        </div>
                        <div class="card-body">
                           <div class="chart" style="position: relative; height: 400px;" data="{{ implode(',',array_values($equipments_graph_type)) }}" data-label="{{ implode(',',array_values($equip_types)) }}" data-colors="{{ implode(',',['#7cb5ec', '#434348', '#90ed7d', '#f7a35c', '#8085e9', '#f15c80', '#e4d354', 'gray']) }}">
                              <canvas id="statistics-doughnut-cate" class="doughnut-canvas" height="300" style="height: 400px;"></canvas>                         
                           </div> 
                        </div>
                     </div>
                  </div>
               </div>
            </div>
        </div>
      </div>    
   </section>
</div>
@endsection