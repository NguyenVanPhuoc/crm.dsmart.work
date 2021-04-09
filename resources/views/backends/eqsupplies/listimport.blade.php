@extends('backends.templates.master')
@section('title', __('Import vật tư'))
@section('content')
@php 
$statusEquipments = get_statusEquipments();
@endphp
<div id="list-events" class="content-wrapper events">
   <section class="content">
        <div class="head container">
            <h1 class="title">{{ __('Import vật tư') }}</h1>
            <a  class="float-right" href="{{ asset('backends/excel_demo.xlsx') }}"  download>
                <i class="far fa-file-excel"></i> Excel mẫu
            </a>
        </div>
        <div class="container">
            <div class="main">
                <form action="{{ route('eqsupplie.import') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="import-ab">
                                            <input type="file" id="actual-btn"  type="file" name="eqsupplie_file" class="hidden"   accept=".xlsx, .xls, .csv, .ods" hidden required/>
                                            <label class="import-title" for="actual-btn"> <i class="fas fa-folder-plus"></i></label>
                                            <span id="file-chosen">Không có file nào được chọn</span>
                                        </div>
                                    </div>                             
                                    <div class="form-group">
                                        <button class="btn btn-success" type="submit">Import excel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                </form>
            </div>
            <div class="pt-3" >
                @include('notices.index')
            </div>
        </div>
   </section>
</div>
<!-- Side Modal Top Right -->
@include('modals.modal_delete')
@include('modals.modal_deleteChoose')
@endsection