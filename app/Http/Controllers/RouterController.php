<?php

namespace App\Http\Controllers;

use App\Router;
use Illuminate\Http\Request;

use Datatables;
use DB;

class RouterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['pagename']='Router';
        $data['description']='Router Details';        
        return view('router.index',$data);
    }


    public function getrouters()
    {
        return Datatables::of(Router::query())
            ->addColumn('action', function ($router) {
                return '<a href="route/edit/'.$router->id.'" class="btn btn-xs btn-primary notika-btn-primary waves-effect">Edit</a>  <a href="route/delete/'.$router->id.'" class="btn btn-xs btn-danger notika-btn-danger waves-effect">Delete</a>';
            })
            ->editColumn('id', '{{$id}}')            
            ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['pagename']='Router';
        $data['description']='Router Details';        
        return view('router.create',$data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $request->validate([
            'SapId' => 'required',
            'HostName' => 'required',
            'loopback' => 'required',
            'macaddress' => 'required',
        ]);  
        Router::create($request->all());   
        return redirect()->route('route.index')->with('success','Router Added successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Router  $router
     * @return \Illuminate\Http\Response
     */
    public function show(Router $router)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Router  $router
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
            $data['router']=Router::find($id);                           
            return view('router.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Router  $router
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Router $router)
    {
        $request->validate([
        'SapId'=>'required',
        'HostName'=> 'required',
        'loopback' => 'required',
        'macaddress' => 'required',
      ]);

        $router = Router::find($request->id);
        //$area = Area::whereUsername($username)->firstOrFail();
        //dd($request->id);
        $router->SapId = $request->get('SapId');
        $router->HostName = $request->get('HostName');
        $router->loopback = $request->get('loopback'); 
        $router->macaddress = $request->get('macaddress');
        $router->update($request->all());  

        return redirect()->route('route.index')
                        ->with('success','Router updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Router  $router
     * @return \Illuminate\Http\Response
     */
    public function destroy(Router $id)
    {
        $data = Router::find($id);
        $data->each->delete();
     return redirect('/route')->with('success', 'Router has been deleted Successfully');
    }
}
