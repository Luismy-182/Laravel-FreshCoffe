<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CategoriaResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        //return parent::toArray($request);// modificando


        return [
            'id'=>$this->id,
            'nombre'=>$this->nombre,
            'icono'=>$this->icono
            //incluso algo combinado 
            //'nombre_id'=>$this->id . " - " .$this->nombre,
        ];
    }
}