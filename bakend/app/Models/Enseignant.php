<?php

namespace App\Models;


use App\Models\Seance;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
class Enseignant  extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    protected $primaryKey = 'id_ens';

    public function seances()
    {
        return $this->hasMany(Seance::class);
    }
    protected $hidden = [
        'password',
    ];
}
