

<!doctype html>
<html lang="en-US" class="no-js" >
   <head>
      <title>@section('title') TEST @show</title>
      <script type="text/javascript" src="js/rocket.js"></script>
      <link href="/css/icon.css" rel="stylesheet">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link href="/css/materialize.css" rel="stylesheet" type="text/css">
      <link href="/css/font-awesome.css" rel="stylesheet" type="text/css">
      <link href="/css/prettify.css" rel="stylesheet" type="text/css">
      <link href="/css/admin.css" rel="stylesheet" type="text/css">
      <link href="/css/light.css" id="ssThemeColor" rel="stylesheet" type="text/css">
      <link href="/css/materialize-red.css" id="ssMainColor" type="text/css" rel="stylesheet">
      <link href="/css/red.css" id="ssAlternativeColor" rel="stylesheet" type="text/css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
      <style type="text/css">
         .error-label {
         color: red;
         }
         #card-alert button {
         background: none;
         border: none;
         position: absolute;
         top: 15px;
         right: 10px;
         font-size: 20px;
         color: #fff;
         }
      </style>
      <script type="text/javascript">
         $(document).ready(function() {
             $('#card-alert button').click(function(){
                 $( "#card-alert" ).fadeOut( "slow", function() {
                 });
             });
         });
      </script>
      @yield('styles')
   </head>
   <body>
      <main>
         @yield('content')
      </main>
      @yield('scripts')
   </body>
</html>