<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Router;

class RouterController extends Controller
{
    
    public function save(Request $req){
		$router = new Router;    	
		$router->SapId=$req->SapId;
		$router->HostName=$req->HostName;
		$router->loopback=$req->loopback;
		$router->macaddress=$req->macaddress;
		if($category->save()){
			return ['Result' => 'Router details has been saved'];
		}
    }

    function routerDisplay(){
    	return Router::all();
    }
}