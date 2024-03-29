@extends('backends.templates.master')
@section('title', __('Lập phiếu thiết bị'))
@section('content')
@php 
   $statusBallot = get_statusBallot();
@endphp
<div id="list-events" class="content-wrapper events">
   <section class="content">
      <div class="head container">
         <h1 class="title">{{ __('Lập phiếu thiết bị') }}</h1>
      </div>
      <div class="main">
         <div class="row search-filter">
            <div class="col-md-6 filter">
               <ul class="nav-filter">
                  <li class="active"><a href="{{ route('ballot.index') }}">{{ __('Tất cả') }}</a></li>
               </ul>
            </div>
            <div class="col-md-6 search-form">
               <form action="{{ route('ballot.index') }}" method="GET">
                  <div class="row">
                     <div class="col-md-6 s-key">
                        <input type="text" name="key" class="form-control s-key" placeholder="{{__('Nhập từ khóa')}}" value="{{$keyword}}">
                     </div>
                     <div class="col-md-6">
								<select class="form-control select2"  name="department_key">
									<option value="" > Tất cả khoa phòng </option>                  
									@foreach ($department_name as $key => $items)
										<option value="{{ $items->id }}">{{ $items->title }}</option>
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
               <form class="dev-form" action="" name="listEvent" method="POST">
                  @csrf
                  <table class="table table-striped table-bordered" role="table">
                     <thead class="thead">
                        <tr>
                           <th>{{ __('#') }}</th>
                           <th>{{ __('Khoa / phòng ') }}</th>
                           <th>{{ __('Mã phiếu') }}</th>
                           <th>{{ __('Ngày chứng từ') }}</th>
                           <th>{{ __('Nhà cung cấp') }}</th>
                           <th>{{ __('Nhân viên') }}</th>
                           <th>{{ __('Trạng thái') }}</th>
                           <th class="action">{{ __('Thao tác') }}</th>
                        </tr>
                     </thead>
                     <tbody class="tbody" action="{{ route('ballot.showEqui') }}">
                        @if(!$ballots->isEmpty())
                        @foreach($ballots as $key => $ballot)
                     <tr>
                        <td>{{  ++$key}}</td>
                        <td>{{  isset($ballot->departments) ? $ballot->departments->title :'' }}</td>
                        <td class="text-success btn-ballot" data-id="{{ $ballot->id }}" >{{  $ballot->ballot }}
                        </td>
                        <td>{{  $ballot->date_vote  }}</td>
                        <td>{{  isset($ballot->providers) ? $ballot->providers->title :''  }}</td>
                        <td>{{  isset($ballot->users) ? $ballot->users->name :''  }}</td>
                        <td class="status-color" ><span class="btn-status" >{{  isset($statusBallot[$ballot->status]) ? $statusBallot[$ballot->status] :''  }}</span></td>
                        @if($ballot->status == "public")
                           <td>
                              <a class="text-dark" title="Cập nhật thiết bị" href="{{ route('ballot.edit',$ballot->id) }}">
                                 <i class="fas fa-edit"></i>
                              </a>
                              <a class="btn btn-danger btn-sm" title="Xóa thiết bị" href="{{ route('ballot.delete',$ballot->id) }}" data-toggle="modal" data-target="#sideModal" data-direct="modal-top-right"><i class="fas fa-trash"></i>
                              </a>
                           </td>
                        @else
                        <td>
                           <a class="text-dark" title="Cập nhật thiết bị" href="{{ route('ballot.edit',$ballot->id) }}">
                              <i class="fas fa-edit"></i>
                           </a>
                           <a class="text-success ballot-success" title="Duyệt phiếu" data-title="{{ $ballot->ballot }}" data-href="{{ route('ballot.updateSuccess',$ballot->id) }}">
                              <i class="fas fa-check"></i>
                           </a>
                           <a class="btn btn-danger btn-sm" title="Xóa thiết bị" href="{{ route('ballot.delete',$ballot->id) }}" data-toggle="modal" data-target="#sideModal" data-direct="modal-top-right"><i class="fas fa-trash"></i>
                           </a>
                        </td>
                     </tr>
                        @endif
                        @endforeach
                        @else
                        <tr>
                           <td colspan="8">{{ __('No items!') }}</td>
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

<!-- The Modal -->
<div class="modal fade" id="ballot-modal" >
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title" >CHI TIẾT THIẾT BỊ : <span class="ballot-title text-success"></span> </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
                  <table class="table table-striped projects" role="table">
                     <thead class="thead">
                        <tr>
                           <th>{{ __('#') }}</th>
                           <th>{{ __('Mã thiết bị') }}</th>
                           <th>{{ __('Tên thiết bị') }}</th>
                           <th>{{ __('ĐVT') }}</th>
                           <th>{{ __('Model') }}</th>
                           <th>{{ __('S/N') }}</th>
                           <th>{{ __('SL') }}</th>
                        </tr>
                     </thead>
                     <tbody class="tbody add-ballot-eq">
                     </tbody>
                  </table>
         </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>

  <div class="modal fade" id="modal_ballot_show" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
           <div class="modal-content">
             <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">Thông báo</h4>
            </div>
            <div class="modal-body">
            <form id="ballot_show_form"  action="" name="frmProducts"  class="form-horizontal" method="POST" novalidate="">
                  @csrf
                  @method('PUT')
                  <div class="form-group">
                     <label class="control-label">{{ __('Bạn có chắc thay đổi duyệt phiếu ?') }}<small></small></label>
                     <input type="hidden" name="status"  class="hidden"  value="public" class="form-control" >
                     <div class="help-block with-errors"></div>
                  </div>
                  <div class="modal-footer">
                     <button type="submit" class="btn btn-success" onclick="return confirm('Bạn có chắc chắn bàn giao thiết bị?')" value="add">Lưu</button>
                     <button type="button" class="btn btn-warning" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">Hủy</span></button>
                  </div>
            </form>
            </div>
        </div>
      </div>
  </div>
</div>




@include('modals.modal_delete')
@include('modals.modal_deleteChoose')
@endsection