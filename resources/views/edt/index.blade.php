<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="\css\bootstrap.min.css">
    <title>Emploi du temps</title>
</head>
<body class=" bg-light">
<div class="text-center col-4 offset-4 mt-3 mb-1">
                    <img src="\img\logo_esc.jpg" class="img-responsive w-25 h-25 d-block mx-auto rounded-circle" alt="logo">
        </div>
    <div class="row">
        <div class="col-8 offset-2 mt-3 bg-warning">

      
       <h1 class="text-center mt-3 text-light"><i>Veuillez selectionner votre filiere pour acceder à l'emploi du temps</i></h1>
        <hr>
        <div class="col-2 offset-2 mb-2"> <a class="btn btn-dark position " href="{{ route('nivo.create') }}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-backspace-fill" viewBox="0 0 16 16">
            <path d="M15.683 3a2 2 0 0 0-2-2h-7.08a2 2 0 0 0-1.519.698L.241 7.35a1 1 0 0 0 0 1.302l4.843 5.65A2 2 0 0 0 6.603 15h7.08a2 2 0 0 0 2-2V3zM5.829 5.854a.5.5 0 1 1 .707-.708l2.147 2.147 2.146-2.147a.5.5 0 1 1 .707.708L9.39 8l2.146 2.146a.5.5 0 0 1-.707.708L8.683 8.707l-2.147 2.147a.5.5 0 0 1-.707-.708L7.976 8 5.829 5.854z"/>
            </svg> RETOUR</a>
            </svg> </a>
            </div>
    <div class="row">
    <!-- <h2 class="text-center mb-5">***Choix de filière***</h2> -->
            <div class="col-8 offset-4 mb-3">
               
                <a class="btn btn-light  mb-2" href="{{ route('ba.index') }}">  <b>BANQUE ET MICROFINANCE</b> </a> <br>
                <a class="btn btn-light  mb-2" href="{{ route('ce.index') }}">  <b>COMMUNICATION D'ENTREPRISE </b> </a><br>
                <a class="btn btn-light  mb-2" href="{{ route('ci.index') }}">  <b>COMMERCE INTERNATIONAL</b> </a><br>
                <a class="btn btn-light  mb-2" href="{{ route('droit.index') }}">  <b>DROIT</b> </a><br>
                <a class="btn btn-light  mb-2" href="{{ route('finance.index') }}">  <b>FINANCE COMPTABILITE</b> </a><br>
                <a class="btn btn-light  mb-2" href="{{ route('grh.index') }}">  <b>GESTION DES RESSOURCES HUMAINES</b> </a><br>
                <a class="btn btn-light  mb-2" href="{{ route('mgc.index') }}">  <b>MARKETING ET GESTION COMMERCIALE</b> </a><br>
                <a class="btn btn-light  mb-2" href="{{ route('mp.index') }}">  <b>MANAGEMENT DES PROJETS</b> </a><br>
                <a class="btn btn-light  mb-2" href="{{ route('seg.index') }}">  <b>ECONOMIE</b> </a><br>
                <a class="btn btn-light  mb-2" href="{{ route('tl.index') }}">  <b>TRANSPORT ET LOGISTIQUE</b> </a>
            </div>

     

            </div>
    </div>
        <script src="\js\jquery.min.js"></script>
        <script src="\js\bootstrap.min.js"></script>
        
</body>
</html>