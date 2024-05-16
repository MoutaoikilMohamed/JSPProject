<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/styleh.css">
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css">
  
</head>
<body style="font-family: 'Inconsolata', monospace; box-sizing: border-box; margin: 0; padding: 0;">
<nav class="navbar navbar-inverse navbar-light bg-light" style="background: linear-gradient(to bottom right, #41644A, #0d4e2f); padding: auto; font-color: #000000; width: 100%;">
    <div class="container-fluid">
        <div class="navbar-header">
           
            <a class="navbar-brand" href="citoyen.jsp">Réclamations locale</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
              
                <li><a href="mesReclamations.jsp">Mes Réclamations</a></li>
         
               
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="LogoutServlet"><i class="glyphicon glyphicon-user"></i> </a></li>
                <li><a href="UtilisateursLogin"><i class="glyphicon glyphicon-log-out"></i>&nbsp;Se déconnecter</a></li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>
