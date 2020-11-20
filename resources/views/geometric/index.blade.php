@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Shape') }}

                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif




                    <h1>Geometric Shapes</h1>
                    <div style="text-align:center;">

       <svg height="500" width="500">
    <polyline id="hexagon" points="87,0 174,50 174,150 87,200 0,150 0,50 87,0" fill="yellow"/>
  <circle id="circle" cx="85" cy="100" r="60" stroke="black" stroke-width="1" fill="red" />
  <rect id="rect" width="60" height="60" x="55" y="70" fill="blue">
</svg>
</div>



                </div>
            </div>
        </div>
    </div>
</div>
@endsection
