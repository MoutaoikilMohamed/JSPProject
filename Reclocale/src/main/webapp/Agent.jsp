<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.reclamation.model.Utilisateurs" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
  <title>Espace Agent Administratifs</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    .panel-heading-custom {
      background-color: #afc8a4; 
      color: #385e82; 
      height: 40px;
    }
    .panel-heading-custom h5 {
      margin-top: 4px; 
      font-weight: bold;
    }
    .user-info ul {
      padding-left: 70px;
    }
    .modal-header-custom {
      background-color: #afc8a4; 
      color: #385e82;
    }
    .modal-header-custom .close {
      color: #FFFFFF;
    }
  </style>
</head>
<body>
  <%@ include file="navAgent.jsp" %>

  <div class="container-fluid">
    <div class="panel panel-primary">
      <div class="panel-heading panel-heading-custom">
        <h5 class="text-center">Espace Citoyen</h5>
      </div>
      <div class="panel-body">
        <div class="container">
          <h1><strong>Bienvenue !</strong></h1>
          <div style="padding-left: 40px">
            <p>Voici tes informations :</p>
          </div>
          <% 
          List<Utilisateurs> utilisateurCin = (List<Utilisateurs>) session.getAttribute("utilisateurCin");
          if (utilisateurCin != null && !utilisateurCin.isEmpty()) {
            for (Utilisateurs utilisateur : utilisateurCin) {
          %>
          <div class="user-info">
            <ul>
              <li><strong>CIN :</strong> <%= utilisateur.getCIN() %></li>
              <li><strong>Nom :</strong> <%= utilisateur.getNom() %></li>
              <li><strong>Prénom :</strong> <%= utilisateur.getPrenom() %></li>
              <li><strong>Date de naissance :</strong> <%= utilisateur.getDateNaissance() %></li>
              <li><strong>Province :</strong> <%= utilisateur.getProvince() %></li>
              <li><strong>Numéro de téléphone :</strong> <%= utilisateur.getNumeroTelephone() %></li>
            </ul>
          </div>
          <% 
            }
          } else { 
          %>
          <div class="user-info">
            <p>Aucun utilisateur trouvé</p>
          </div>
          <% 
          }
          %>
        </div>
        <div class="text-right" style="margin: 20px 5%;">
          <button type="button" name="add" id="add" data-toggle="modal" data-target="#add_data_Modal" class="btn btn-primary">
            <span class="glyphicon glyphicon-edit"></span> Modifier
          </button>
        </div>
      </div>
    </div>
  </div>

  <div id="add_data_Modal" class="modal fade" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header modal-header-custom">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title text-center">Modifier les informations</h4>
        </div>
        <div class="modal-body">
          <form method="post" action="update">
            <div class="form-row">
              <div class="form-group col-md-6">
                <label>Nom :</label>
                <input type="text" name="nom" class="form-control" id="nom" placeholder="Nom">
              </div>
              <div class="form-group col-md-6">
                <label>Prénom :</label>
                <input type="text" name="prenom" class="form-control" placeholder="Prénom">
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label>Date de naissance :</label>
                <input type="date" name="datenaissance" class="form-control">
              </div>
              <div class="form-group col-md-6">
                <label>Province :</label>
                <input type="text" name="province" class="form-control" placeholder="Province">
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label>Numéro de téléphone :</label>
                <input type="text" name="Ntel" class="form-control" placeholder="N° téléphone">
              </div>
            </div>
            <button type="submit" class="btn btn-primary">Enregistrer</button>
          </form>
        </div>
        <div class="modal-footer"></div>
      </div>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
