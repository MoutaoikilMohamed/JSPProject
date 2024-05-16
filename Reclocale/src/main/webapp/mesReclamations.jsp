<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.reclamation.model.Reclamation" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mes réclamations</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>  
<script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>  
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/js/bootstrap-datetimepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/locale/fr.js"></script>
<style>
    hr.new1 {
        border: 1px solid #385e82;
        border-radius: 2px;
    }
</style>
</head>
<body>
<%@ include file="nav.jsp" %>

<div class="container-fluid">
    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading" style="background-color: #afc8a4; color: #385e82; height: 40px;">
                <h5 class="text-center" style="margin-top: 4px; font-weight: bold;">Liste des Réclamations</h5>
            </div>
            <div class="panel-body"> 
                <br /><br />  
                <div class="">  
                    <div align="right">  
                        <button type="button" name="add" id="add" data-toggle="modal" data-target="#add_data_Modal" class="btn" style="background-color: #afc8a4; color: #385e82">
                            <span class="glyphicon glyphicon-plus"></span>&nbsp;Ajouter
                        </button>  
                    </div> 
                    <br>
                    <div id="reclamation_table" class="table-responsive">  
                        <table id="employee_data" class="table table-bordered"> 
                            <thead>  
                                <tr>  
                                    <th style="width: 10%;">ID</th> 
                                    <th style="width: 10%;">Titre</th>
                                    <th style="width: 10%;">Type</th>                                    
                                    <th style="width: 15%;">Date de création</th>
                                    <th style="width: 15%;">Date de résolution</th>
                                    <th style="width: 30%;">Description</th>
                                    <th style="width: 5%;">Status</th>
                                    <th class="text-center" style="width: 5%;">Motif</th>  
                                    <th class="text-center" style="width: 5%;">Supprimer</th> 
                                </tr> 
                            </thead>    
                            <tbody>
                             <%
                                List<Reclamation> reclamationscin = (List<Reclamation>) session.getAttribute("reclamationsListCIN");
                                if (reclamationscin != null && !reclamationscin.isEmpty()) {
                                    for (Reclamation reclamation : reclamationscin) {
                                %>
                                <tr>  
                                 <td><%= reclamation.getID() %></td>
                                    <td><%= reclamation.getNom() %></td>
                                    <td><%= reclamation.getType() %></td>
                                    <td><%= reclamation.getDateCreation() %></td>
                                    <td><%= reclamation.getDateResolution() %></td>
                                    <td><%= reclamation.getDescription() %></td>
                                    <td><%= reclamation.getStatus() %></td>
                                    <td><%= reclamation.getMotif() %></td>
                                    <td>
                                        <center>

                                                <button style="background-color: #afc8a4; color: #385e82" type="button" name="delete" id="delete" data-toggle="modal" data-target="#delete_data_Modal" class="btn btn-info btn-xs delete_data">
                                                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                                </button>

                                        </center>
                                    </td> 
                                
                                </tr>  
                                  <%
                                    }
                                } else {
                                %>
                                <tr>
                                    <td colspan="8" class="text-center">Aucune réclamation trouvée</td>
                                </tr>
                                <%
                                }
                                %>
                            </tbody>
                        </table> 
                    </div>  
                </div>  
            </div>
        </div>
    </div> 
</div>

<div id="add_data_Modal" class="modal fade" data-backdrop="static" data-keyboard="false">  
    <div class="modal-dialog">  
        <div class="modal-content">  
            <div class="modal-header" style="background-color: #afc8a4; color: #385e82">  
                <h4 style="font-family: 'Varela Round', sans-serif;" class="modal-title text-center">Faire une réclamation</h4>  
            </div>  
            <div class="modal-body"> 
                <form method="post" action="insertRecl" class="form"  enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="nom">Nom :</label>
                        <input type="text" name="nom" class="form-control" id="nom" placeholder="Nom">
                    </div>
                    <div class="form-group">
                        <label for="type">Type :</label>
                        <input type="text" name="type" class="form-control" id="type" placeholder="Type">
                    </div>
                    <div class="form-group">
                        <label for="description">Description :</label>
                        <textarea name="description" class="form-control" id="description" rows="5" cols="5"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Enregistrer</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
                </form>  
            </div>  
            <div class="modal-footer">  
            </div>  
        </div>  
    </div>  
</div>

<div class="modal fade" id="edit_data_Modal" tabindex="-1" role="dialog" aria-labelledby="edit_data_Modal_Label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #afc8a4; color: #385e82">
                <h4 class="modal-title" id="edit_data_Modal_Label">Modifier</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form method="post" action="editRecl" class="form"  enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="nom">Nom :</label>
                        <input type="text" name="nom" class="form-control" id="nom" placeholder="Nom">
                    </div>
                    <div class="form-group">
                        <label for="type">Type :</label>
                        <input type="text" name="type" class="form-control" id="type" placeholder="Type">
                    </div>
                    <div class="form-group">
                        <label for="description">Description :</label>
                        <textarea name="description" class="form-control" id="description" rows="5" cols="5"></textarea>
                    </div>

                </form>  
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
                <button type="button" class="btn btn-primary">Enregistrer les modifications</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="delete_data_Modal" tabindex="-1" role="dialog" aria-labelledby="delete_data_Modal_Label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #afc8a4; color: #385e82">
                <h4 class="modal-title" id="delete_data_Modal_Label">Supprimer</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                 <label>Etes-vous sûr de vouloir supprimer cette réclamation ?</label>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
                <button type="button" class="btn btn-primary">Confirmer la suppression</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="motif_data_Modal" tabindex="-1" role="dialog" aria-labelledby="motif_data_Modal_Label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #afc8a4; color: #385e82">
                <h4 class="modal-title" id="delete_data_Modal_Label">Motif:</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                 <label>Motif</label>

            </div>
        </div>
    </div>
</div>

</body>
</html>
