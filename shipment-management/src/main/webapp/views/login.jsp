<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Shipment Management</title>

    <!-- Bootstrap core CSS -->
    <link href="../resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../resources/bootstrap-3.3.7-dist/css/signin.css" rel="stylesheet">
    
    <script type="text/javascript" src="../resources/jquery/jquery-3.2.1.js" ></script>
  
  </head>

  <body>

    <div class="container">

      <form class="form-signin" id="form-sign" >
        <h2 class="form-signin-heading">Iniciar sesión</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="inputLogin" class="form-control" placeholder="Usuario o Cliente" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="cliente"> Cliente
          </label>
        </div>
        <button class="btn btn-lg btn-shipment btn-block" type="submit">login</button>
      </form>

    </div> <!-- /container -->
    
    <script type="text/javascript">
    $( "#form-sign" ).submit(function( event ) {
    	
    	$.ajax({
            type : "POST",
            url  : "inicio.do,
            data : { login: $("#inputLogin").val() },
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            success : function(response) {
                alert("Success");
            }
        });
    	  
    });
    
    	
    </script>

  </body>
</html>
