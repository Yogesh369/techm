@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Edit Router') }}

                 
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <div>
    


@if ($errors->any())
    <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form action="{{ route('route.update', $router->id) }}" method="POST">
    @csrf 
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-example-wrap mg-t-30">
                        <div class="cmp-tb-hd cmp-int-hd">
                            <h2>Edit Route</h2>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <div class="form-example-int form-example-st">
                                    <div class="form-group">
                                        <div class="nk-int-st">
                                            <input type="text" class="form-control input-sm" value='{{ $router->SapId }}' name="SapId">
                                            <input type="hidden" value='{{ $router->id }}' name="id">
                                        </div>
                                    </div>
                                </div>
                            </div>                        
                           
                            <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                                <div class="form-example-int form-example-st">
                                   <div class="form-group">
                                        <div class="nk-int-st">
                                            <input type="text" class="form-control input-sm" value='{{ $router->HostName }}' name="HostName">
                                        </div>
                                    </div>
                                </div>
                            </div>

                             <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                                <div class="form-example-int form-example-st">
                                   <div class="form-group">
                                        <div class="nk-int-st">
                                            <input type="text" class="form-control input-sm" value='{{ $router->loopback }}' name="loopback">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                                <div class="form-example-int form-example-st">
                                   <div class="form-group">
                                        <div class="nk-int-st">
                                            <input type="text" class="form-control input-sm" value='{{ $router->macaddress }}' name="macaddress">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <div class="form-example-int">
                                    <button type="submit" class="btn btn-success notika-btn-success">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

</form>
</div>
                  
                </div>
            </div>
        </div>
    </div>
</div>
@endsection