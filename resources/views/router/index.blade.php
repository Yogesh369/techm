@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Router') }}

                   <a href="{{ route('route.create') }}" class="btn btn-xs btn-primary notika-btn-warning waves-effect add" style="float: right;">Add</a>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                      <table id="area" class="table table-striped  router">
                                <thead>
                                 <tr>
                                    <th>id</th>
                                    <th>Sapid</th>
                                    <th>HostName</th>
                                    <th>loopback</th>
                                    <th>macaddress</th>
                                    <th>created_at</th>
                                    <th>action</th>
                                </tr>
                                </thead>  
                                <tbody>
                                    
                                </tbody>                         
                            </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection