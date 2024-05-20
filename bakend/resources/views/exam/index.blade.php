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
                    <a href="{{route('exam.create')}}"><button type="submit" id="lien" class="btn btn-success  fw-bold fst-italic  ">AJOUTER UNE SEANCE</button></a>
                    </div>
                @endcan
                </div>
                
            
   


    </div>
        <script src="\js\jquery.min.js"></script>
        <script src="\js\bootstrap.min.js"></script>
        
</body>
</html>