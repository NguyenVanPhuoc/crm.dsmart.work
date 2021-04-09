@extends('backends.templates.master')

@section('title', __('Danh sách kiểm định'))

@section('content')

@php

   $acceptance = acceptanceRepair();

@endphp

<div id="list-events" class="content-wrapper events">

   <section class="content">

      <div class="head container">

         <h1 class="title">{{ __('Danh sách  kiểm định') }}</h1>

      </div>

      <div class="main">

         <div class="row search-filter">

            <div class="col-md-2 filter">

               <ul class="nav-filter">

                  <li class="active"><a href="{{ route('accre.index') }}">{{ __('Tất cả') }}</a></li>

               </ul>

            </div>

            <div class="col-md-10">

               <div class="list-equip row">

                  <div class="col-md-4">

                     <p>{{ __('Tên: ')}}{{$equipments->title}}</p>

                     <p>{{ __('Model: ')}}{{$equipments->model}}</p>

                     <p>{{ __('Serial: ')}}{{$equipments->serial}}</p>

                  </div>

                  <div class="col-md-4">

                     <p>{{ __('Khoa: ')}}{{isset($equipments->equipment_department) ? $equipments->equipment_department->title : ''}}</p>

                     <p>{{ __('Ngày nhập: ')}}{{$equipments->warehouse}}</p>

                     <p>{{ __('Ngày hết hạn bảo hành: ')}}{{$equipments->warranty_date}}</p>

                  </div>

                  <div class="col-md-4">

                     <p>{{ __('Ngày kiểm định đầu tiên: ')}}{{$equipments->first_inspection}}</p>

                  </div>

                  

               </div>

               

            </div>

         </div>

         <div class="card">

            <div class="card-body p-0">

               @include('notices.index')

               <form class="dev-form" action="" name="listEvent" method="POST">

                  @csrf

                  <table class="table table-striped table-bordered" role="table">

                     <thead class="thead">

                        <tr class="text-center">

                           <th>{{ __('STT') }}</th>

                           <th>{{ __('Thiết bị') }}</th>

                           <th>{{ __('Đơn vị thực hiện') }}</th>

                           <th>{{ __('Thời gian bảo hành') }}</th>

                           <th>{{ __('Nội dung bảo hành') }}</th>

                           <th>{{ __('Ghi chú') }}</th>


                        </tr>

                     </thead>
                     <tbody class="tbody">
                        @php 
                           $accres =  isset($equipments->accres) ? $equipments->accres : false;
                        @endphp
                        @if(!$accres->isEmpty())
                            @foreach($accres as $key => $items)
                        <tr>
                            <td>{{ ++$key }}</td>
                            <td>{{ $items->equipments->title }}</td>
                            <td>{{ $items->provider }}</td>
                            <td>{{ $items->time }}</td>
                            <td>{{ $items->content }}</td>
                            <td>{{ $items->note }}</td>
                        </tr>
                            @endforeach
                            @else
                            <tr>
                                <td colspan="15">{{ __('No items!') }}</td>
                            </tr>
                        @endif
                     </tbody>

                  </table>

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