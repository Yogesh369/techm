@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Server') }}

                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

              <h1>Working</h1>
             <?php  

             //SSH::into('S1')->run(['ssh -tt -p 2222 phprg@127.0.0.1', 'mkdir testDir']); 
             SSH::run(array(
    'cd /var/www/html/telegram',
    'git pull origin master',
));

             ?>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection