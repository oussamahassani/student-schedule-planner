<?php

namespace App\Models;

use App\Models\Seance;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class EmploiDuTempsExam extends Model
{
    use HasFactory;
    protected $primaryKey = 'id_emploi_exam';

    public function seances ()
    {
        return $this ->hasMany(Seance::class);
    }
}
