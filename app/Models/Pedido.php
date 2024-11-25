<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    use HasFactory;

    //la columna de usuario ṕertenece a el modelo de usuario
    public function user(){
        return $this->belongsTo(User::class);
    }

    //todo bien pero no biene el contenido de la orden y no sabemos que preparar en la cocina

    //vamos a relacionar pedidos con productos y esta en tabla pedidoProductos
    //muschos a muchos belongs TooMany
    //estamos consultando pedidos, pero la relacion esta en pedido_producto
    public function productos(){
        return $this->belongsToMany(Producto::class, 'pedido_productos')->withPivot('cantidad');

        //no viene la cantidad, entonces debemos agregar la columna que queremos agregar a la consulta
    }
}


//antes cuando iterabas colocabas el $user->user()->name
//como es una respuesta de tipo json debemos obtener todo el json plano desde el inicio
