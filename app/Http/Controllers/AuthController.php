<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\RegistroRequest;

class AuthController extends Controller
{
    
    public function register(RegistroRequest $request){
        $data=$request->validated();

        //crear el usuario
        $user = User::create([
            'name'=>$data['name'],
            'email'=>$data['email'],
            'password'=>bcrypt($data['password'])
        ]);

        //retorna una respuesta
        return[
            'token'=>$user->createToken('token')->plainTextToken,
            'user' =>$user
        ];
    }


    public function login(LoginRequest $request){
        $data=$request->validated();
       

        //revisar si el password es correcto
        if(!Auth::attempt($data)){
            return response([
                'errors'=>['El password es incorrecto']
            ], 422); //por defaul te da el 200
        }

            //generando token de login
            $user=Auth::user();
               //retorna una respuesta
               return[
                'token'=>$user->createToken('token')->plainTextToken,
                'user' =>$user
            ];
    }



    public function logout(Request $request){
        
        $user=$request->user();
        $user->currentAccessToken()->delete();

        return[
            'user'=>null
        ];

    }
}
