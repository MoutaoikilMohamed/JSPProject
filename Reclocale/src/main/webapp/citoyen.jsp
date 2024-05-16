<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.reclamation.model.Utilisateurs" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Espace Citoyen</title>
</head>
<body>
<%@ include file="nav.jsp" %>
  <% List<Utilisateurs> utilisateurCin = (List<Utilisateurs>) session.getAttribute("utilisateurCin");
                if (utilisateurCin != null && !utilisateurCin.isEmpty()) {
                    for (Utilisateurs utilisateur : utilisateurCin) {
                %>
<div class="container-fluid">
    <div class="panel panel-primary">
        <div class="panel-heading" style="background-color: #afc8a4; color: #385e82; height: 40px;">
            <h5 class="text-center" style="margin-top: 4px; font-weight: bold;">Espace Citoyen</h5>
        </div>
        <div class="panel-body">
            <div class="container">
                <h1><strong>Bienvenue !</strong></h1>
                <div style="padding-left: 40px">
                    <p>Voici tes informations :</p>
                </div>
              
                <div style="padding-left: 70px">
                    <ul>
                        <li><strong>CIN :</strong> <%= utilisateur.getCIN() %></li>
                        <li><strong>Nom :</strong> <%= utilisateur.getNom() %></li>
                        <li><strong>Prénom :</strong> <%= utilisateur.getPrenom() %></li>
                        <li><strong>Date de naissance :</strong> <%= utilisateur.getDateNaissance() %></li>
                        <li><strong>Province :</strong> <%= utilisateur.getProvince() %></li>
                        <li><strong>Numéro de téléphone :</strong> <%= utilisateur.getNumeroTelephone() %></li>
                    </ul>
                </div>
            
            </div>
            <div class="" style="margin-left: 5%; margin-right: 5%;">
                <div align="right">
                    <button type="button" name="add" id="add" data-toggle="modal" data-target="#add_data_Modal" class="btn btn-primary">
                        <span class="glyphicon glyphicon-edit"></span> Modifier
                    </button>
                    <br><br>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="add_data_Modal" class="modal fade" data-backdrop="static" data-keyboard="false">  
    <div class="modal-dialog">  
        <div class="modal-content">  
            <div class="modal-header" style="background-color: #afc8a4; color: #385e82">  
                <button type="button" class="close" data-dismiss="modal" style="color: #FFFFFF">&times;</button>  
                <h4 style="font-family: 'Varela Round', sans-serif;" class="modal-title text-center">Modifier les informations</h4>  
            </div>  
            <div class="modal-body"> 
           <form method="post" action="update">
    <div class="form-row">
        <div class="form-group col-md-3">
            <label for="nom">Nom :</label>
            <input type="text" name="nom" id="nom" class="form-control" placeholder="Nom">
        </div>
        <div class="form-group col-md-3">
            <label for="prenom">Prénom :</label>
            <input type="text" name="prenom" id="prenom" class="form-control" placeholder="Prénom">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="datenaissance">Date de naissance :</label>
            <input type="date" name="datenaissance" id="datenaissance" class="form-control">
        </div>
        <div class="form-group col-md-6">
            <label for="province">Province :</label>
            <input type="text" name="province" id="province" class="form-control" placeholder="Province">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="Ntel">Numéro de téléphone :</label>
            <input type="text" name="Ntel" id="Ntel" class="form-control" placeholder="N° téléphone">
        </div>
    </div>
    <br><br>
    <button type="submit" class="btn btn-primary">Enregistrer</button>
</form>  

            </div>  
            <div class="modal-footer">  
            </div>  
        </div>  
    </div>  
</div> 
    <% 
                    }
                } else { 
                %>
                <div style="padding-left: 70px">
                    <p>Aucun utilisateur trouvé</p>
                </div>
                <% 
                    }
                %>
</body>
</html>
