<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="\css\bootstrap.min.css">
    <title>Emploi du temps</title>
  
</head>
<body class=" bg-primary-subtle">
        <div class="bg-primary col-8 offset-2 mt-5 mb-2">
       <hr>
        <div class="text-center col-6 offset-3 mt-3 mb-5">
                   
        </div>
        
        @can('access-admin')
             <div class="text-center text-light mb-3"><h2>CREER UN EMPLOI DU TEMPS du Exam</h2></div>
             <div class="text-center col-6 offset-3 text-warning mb-3"><h3><i>Proceder à l'enregistrement des séances des exam </i></h3></div>
        @endcan
    @can('deny-admin')
    <div class="text-center text-primary mb-3"><h2>EMPLOI DU TEMPS Exam</h2></div>
    @endcan


 
  <div class="row  mt-5 ">
  @can('access-admin')
    <div class=" col-3 mb-5 offset-2 ">
                <a class="btn btn-dark position " href="{{ route('dashboard') }}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-backspace-fill" viewBox="0 0 16 16">
            <path d="M15.683 3a2 2 0 0 0-2-2h-7.08a2 2 0 0 0-1.519.698L.241 7.35a1 1 0 0 0 0 1.302l4.843 5.65A2 2 0 0 0 6.603 15h7.08a2 2 0 0 0 2-2V3zM5.829 5.854a.5.5 0 1 1 .707-.708l2.147 2.147 2.146-2.147a.5.5 0 1 1 .707.708L9.39 8l2.146 2.146a.5.5 0 0 1-.707.708L8.683 8.707l-2.147 2.147a.5.5 0 0 1-.707-.708L7.976 8 5.829 5.854z"/>
            </svg>   RETOUR</a>
            </div>
              
             
               <div class="col-4 offset-3">
                    <a href="{{route('exam.create')}}"><button type="submit" id="lien" class="btn btn-success  fw-bold fst-italic  ">AJOUTER UN EXAMAN</button></a>
                    </div>
                @endcan
                </div>
                
            
   


    </div>
    <div class="bg-primary-subtle">
<hr>
<div class="container mt-2">
<div class="row">
<div class="col-lg-12 margin-tb">
<div class="pull-left mt-3">
<h2 class="text-center">LISTE DES Examans</h2>
</div>
<hr>
<div class="col-4 offset-3">
                    <a href="{{route('exam.destroy',1)}}"><button type="submit" id="lien" class="btn btn-success  fw-bold fst-italic  ">Delete All  EXAMAN</button></a>
                    </div>
<div class="pull-right mb-2 text-end  ">
</div>
</div>
</div>
@if ($message = Session::get('success'))
<div class="alert alert-success">
<p>{{ $message }}</p>
</div>
@endif
<table class="table table-bordered border-dark">
<tr>
<th class="text-center">ID</th>
<th class="text-center">Salle</th>
<th class="text-center">Matiere</th>
<th class="text-center">Classe</th>
<th class="text-center" width="140px">Action</th>
</tr>
@foreach ($data as $exam)
<tr>
<td>{{ $exam->id_emploi_exam  }}</td>
<td>{{ $exam->salle }}</td>
<td>{{ $exam->module }}</td>
<td>{{ $exam->filiere }}</td>
<td>
<form action="{{ route('examandestroyOne.destroyOne', $exam->id_emploi_exam) }}" method="POST">
@csrf
@method('DELETE')
<button type="submit" class="btn btn-danger"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
</svg></i>  Supprimer</button>
</form>
</td>
</tr>
@endforeach
</table>
</div>
        <script src="\js\jquery.min.js"></script>
        <script src="\js\bootstrap.min.js"></script>
        
</body>
</html>