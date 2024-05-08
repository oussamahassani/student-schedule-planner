<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Enseignant;
use Validator;


class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth:api', ['except' => ['login', 'register','currentUser' ,'allUser']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request){
    	$validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

       
        if ($request->user_type === 'user') {
            if (! $token = auth('user')->attempt($validator->validated())) {
                return response()->json(['error' => 'Unauthorized'], 401);
            }
        }
        // Vérifier l'authentification sur la table "enseignement"
        elseif ($request->user_type === 'enseignement') {
            if (! $token = auth('enseignant')->attempt($validator->validated())) {
                return response()->json(['error' => 'Unauthorized'], 401);
            }
        } else {
            return response()->json(['error' => 'Invalid user type'], 422);
        }
        return $this->createNewToken($token, $request->user_type);
    }

    /**
     * Register a User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|between:2,20',
            'id_filiere' => 'required',
            'email' => 'required|string|email|max:30|unique:users',
            'password' => 'required|string|confirmed|min:6',
        ]);

        if($validator->fails()){
            return response()->json($validator->errors()->toJson(), 400);
        }

        $user = User::create(array_merge(
                    $validator->validated(),
                    ['password' => bcrypt($request->password)]
                ));

        return response()->json([
            'message' => 'User successfully registered',
            'user' => $user
        ], 201);
    }


    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout() {
        auth()->logout();

        return response()->json(['message' => 'User successfully signed out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh() {
        return $this->createNewToken(auth()->refresh());
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function userProfile() {
        return response()->json(auth()->user());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token , $role){
        if($role == 'user'){
            $user = User::join('filieres', 'users.id_filiere', '=', 'filieres.id_filiere')
            ->select('users.*', 'filieres.*')
            ->first(); 
    
        }
       else if ($role == 'enseignement'){
        $user = auth('enseignant')->user();
       }
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
         //   'expires_in' => auth()->factory()->getTTL() * 60,
            'user' => $user , //auth()->user()
            'role' =>$role
        ]);
    }

    public function currentUser( $email){
        $user = User::where('email', $email)->first();
        return response()->json([
            'success' => true,
           'user' => $user 
        ]);
    }

    public function allUser($filiere){
        $user = User::where('id_filiere', $filiere)->get();
        return response()->json([
            'success' => true,
            'filiere' => $filiere,

           'user' => $user 
        ]);
    }
}