<?php

namespace App\Http\Controllers;

use App\Models\Pedido;
use Illuminate\Http\Request;
use App\Models\PedidoProducto;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\PedidoCollection;

class PedidoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //cargalo con y ponemos el nombre del metodo de relacion user y te trae user id, user y toda la informaicon del usuario en un segundo objeto dentro del arreglo

        //solo para JSON
        return new PedidoCollection(Pedido::with('user')->with('productos')->where('estado',0)->get() );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //alamcenar una orden mas bioen pedido para que no diga ordens la BD
        $pedido = new Pedido;
        $pedido ->user_id = Auth::user()->id;
        $pedido->total= $request->total;
        $pedido->save();

        //obtener id del pedido
        $id=$pedido->id;
        //obtener los productos
        $productos = $request->productos;
        //Formatear un arreglo
        foreach($productos as $producto){
            $pedido_producto[]=[
                'pedido_id'=>$id,
                'producto_id'=>$producto['id'],
                'cantidad'=>$producto['cantidad'],
                'created_at'=>Carbon::now(),
                'updated_at'=>Carbon::now()
            ];
        }
        //Alamcenando en la BD
        PedidoProducto::insert($pedido_producto);

        return [
            'message'=>'Pedido realizado correctamente, estara listo en unos minutos, gracias por usar la App',
            'productos'=>$request->productos
        ];
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pedido  $pedido
     * @return \Illuminate\Http\Response
     */
    public function show(Pedido $pedido)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Pedido  $pedido
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pedido $pedido)
    {
        $pedido->estado=1;
        $pedido->save();
        return [
        'pedido'=>$pedido
        ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Pedido  $pedido
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pedido $pedido)
    {
        //
    }
}
