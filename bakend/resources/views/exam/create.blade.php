<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>formulaire Exam</title>
<link rel="stylesheet" href="\css\bootstrap.min.css">
</head>
<body class="bg-dark-subtle">
  
        <div class="row mt-3 ">
            <div class="col-5 offset-4 ">
                
        <form class="form-control" action="{{route('exam.store')}}" method="POST" enctype="multipart/form-data">
        @csrf
            <div class="bg-primary-subtle">
            <h1 class="text-center text-dark mb-3"><i>AJOUTER UN Exam</i></h1>
            <hr>
            <div class="col-xs-4 col-sm-4 col-md-8 offset-1">

                <div class="form-group text-dark">
                    <label for="jour"><b>JOUR</b> </label>
                    <select name="jour" id="jour" class="form-control">
                    <option value="">-Select-</option>
                        <option value="1">Lundi</option>
                        <option value="2">Mardi</option>
                        <option value="3">Mercredi</option>
                        <option value="4">Jeudi</option>
                        <option value="5">Vendredi</option>
                        <option value="6">Samedi</option>
                        
                    </select>
                </div>

            
                <div class="form-group text-dark">
                <label for="hdebut"><b>Heure de debut</b> </label>
                <input type="time" name="hdebut" id="hdebut" class="form-control">
                </div>

                <div class=" form-group text-dark">
                <label for="hfin"><b>Heure de fin</b> </label>
                <input type="time" name="hfin" id="hfin" class="form-control">
             

                <div class=" form-group text-dark">
                <label for="hdebut"><b>Filière</b> </label>
                <select name="filiere" id="filiere" class="form-control ">
        <option value=""> -Select- </option>
                @foreach ($data as $filiere)
               
                <option value="{{$filiere->id_filiere}}">{{$filiere -> nomfil}}</option>
                @endforeach
            </select>
            </div>

            <input type="hidden" id="filiere_name_hidden" name="filiere_name_hidden" value="">
        
       

            
                <div class="  form-group text-dark">
                    <label for="salle"><b>SALLE</b> </label>
                            <select name="salle" id="salle" class=" form-control " >
                        
                            <option value="" selected> -Select- </option>
                            @foreach($salle as $salle)    
                            <option value="{{$salle->nomsalle}}">{{$salle->nomsalle}} </option>
                                @endforeach
                            </select>
               
                </div>

                

    

          
                <div class="form-group text-dark">
                        <label for="enseignant"><b>ENSEIGNANT</b> </label>
                        <select name="enseignant" id="enseignant" class=" form-control " >
                        <option value="" selected> -Select- </option>
                                    @foreach($ens as $enseignant)    
                                        <option value="{{$enseignant->nom}} {{$enseignant->prenoms}}">{{$enseignant->nom}} {{$enseignant->prenoms}}</option>
                                    @endforeach
                          </select>
              
                </div>
                <div class="form-group text-dark">
                        <label for="module"><b>MODULE</b> </label>
                        <select name="module" id="module" class=" form-control " >
                        <option value="" selected> -Select- </option>
                                        @foreach($module as $module)    
                                            <option  value="{{$module->intitule}}">{{$module->intitule }}</option>
                                        @endforeach
                        </select>
                </div>
       

<button type="submit" class="btn btn-success mt-3 mb-3">Ajouter</button>
<a href="{{route('seances.index')}}" type="button" class="btn btn-light">Annuler</a>

           
            
           
            </div>
            </div>

        </form>
        </div>
        </div>
</body>
</html>

<script>

    document.getElementById('filiere').addEventListener('change', function() {
        var selectElement = document.getElementById('filiere');
        var hiddenInputElement = document.getElementById('filiere_name_hidden');
        var selectedOption = selectElement.options[selectElement.selectedIndex];
        var selectedFiliereId = selectedOption.value;
        var selectedFiliereNom = selectedOption.text;
        console.log(selectedFiliereNom);
        hiddenInputElement.value =  selectedFiliereNom; // Concatenate filiere_id and nomfil with a delimiter
    });
    </script>