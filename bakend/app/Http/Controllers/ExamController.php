<?php

namespace App\Http\Controllers;

use App\Models\Salle;
use App\Models\Module;
use App\Models\Seance;
use App\Models\Filiere;
use App\Models\Enseignant;
use Illuminate\Http\Request;
use App\Models\EmploiDuTempsExam;

class ExamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
    //    return $this->middleware('auth');
    }

    public function index()
    {
      
        $data = Filiere::all();
        $salle = Salle::all();
        $ens = Enseignant::all();
        $module = Module::all();
        $fil = EmploiDuTempsExam::all();
        $a = EmploiDuTempsExam::all();
        $b = EmploiDuTempsExam::all();
        $c = EmploiDuTempsExam::all();
        $d = EmploiDuTempsExam::all();
        $e = EmploiDuTempsExam::all();
        $f = EmploiDuTempsExam::all();
        $g = EmploiDuTempsExam::all();
        $h = EmploiDuTempsExam::all();
        $i = EmploiDuTempsExam::all();
        $j = EmploiDuTempsExam::all();
        $k = EmploiDuTempsExam::all();
        $l = EmploiDuTempsExam::all();
        $m = EmploiDuTempsExam::all();
        $n = EmploiDuTempsExam::all();
        $o = EmploiDuTempsExam::all();
        $p = EmploiDuTempsExam::all();
        $q = EmploiDuTempsExam::all();
        $r = EmploiDuTempsExam::all();
    
        return view('exam.index', [
            'data' =>$data,
             'fil' =>$fil,
             'a' =>$a,
             'b' =>$b,
             'c' =>$c,
             'd' =>$d,
             'e' =>$e,
          
               'f' =>$f,
               'g' =>$g,
               'h' =>$h,
               'i' =>$i,
               'j' =>$j,
               'k' =>$k,
               'l' =>$l, 
               'salle' =>$salle,
                'ens' =>$ens, 
                'm' =>$m,
                'n' =>$n,
                'o' =>$o,
                'p' =>$p,
                'q' =>$q,
                'r' =>$r,
                'module' =>$module ]);
    }
    

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $salle = Salle::all();
        $data = Filiere::all();
        $ens = Enseignant::all();
        $module = Module::all();
        return view('exam.create', ['salle' =>$salle,'data' =>$data, 'ens' =>$ens, 'module'=>$module]);
       
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
            'jour' => 'required',
            'hdebut' => 'required',
            'hfin' => 'required',
            'salle' => 'required',
            'enseignant' => 'required',
            'module' => 'required',
            'filiere' => '',
      
            ]);
            $emploi = new EmploiDuTempsExam;
            $emploi->jour = $request->jour;   
            $emploi->hdebut = $request->hdebut;  
            $emploi->hfin = $request->hfin;               
            $emploi->salle = $request->salle;
            $emploi->enseignant = $request->enseignant;
            $emploi->module = $request->module;
            $emploi->filiere = $request->filiere;
           
          
            $emploi->save();
            return redirect()->route('exam.create')
            ->with('success','seance has been created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('exam.show',compact('seance'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(EmploiDuTempsExam $emploi)
    {
        return view('exam.edit',compact('emploi'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'jour' => 'required',
            'hdebut' => 'required',
            'hfin' => 'required',
           // 'type' => 'required',
            'salle' => 'required',
            'enseignant' => 'required',
            'module' => 'required',
          
            ]);
            $emploi = new EmploiDuTemps;
            $emploi->jour = $request->jour;   
            $emploi->hdebut = $request->hdebut;  
            $emploi->hfin = $request->hfin;               
          //  $emploi->type = $request->type;
            $emploi->salle = $request->salle;
            $emploi->enseignant = $request->enseignant;
            $emploi->module = $request->module;
            $emploi->save();
            return redirect()->route('exam.index')
            ->with('success','exam has Been updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy()
    {
        $seance = EmploiDuTempsExam::all();
        foreach ($seance as $seance){
        $seance->delete();
    }
        return redirect()->route('exam.index')
        ->with('success','Retablie avec success');
    }

    public function getByFiliere($filiere)
    {
        return EmploiDuTempsExam::where('filiere_id', $filiere)->get();
    }

  

    public function getByEnseignemnt($enseignemnt){
        return EmploiDuTempsExam::where('enseignant', $enseignemnt)->get();
    }
}
