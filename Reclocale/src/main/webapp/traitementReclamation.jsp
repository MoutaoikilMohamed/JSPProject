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
    <%@ include file="navAgent.jsp" %>

    <div class="container-fluid">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading" style="background-color: #afc8a4; color: #385e82; height: 40px;">
                    <h5 class="text-center" style="margin-top: 4px; font-weight: bold;">Liste des Réclamations</h5>
                </div>
                <div class="panel-body"> 
                    <br /><br />  
                    <div class="table-responsive">  
                        <table id="employee_data" class="table table-bordered"> 
                            <thead>  
                                <tr>  
                                    <th style="width: 5%;">ID</th> 
                                    <th style="width: 8%;">Nom</th>
                                    <th style="width: 10%;">Type</th>                                    
                                    <th style="width: 8%;">Date de création</th>
                                    <th style="width: 8%;">Date de résolution</th>
                                    <th style="width: 27%;">Description</th>
                                    <th style="width: 10%;">Status</th>
                                    <th style="width: 15%;">Motif</th>
                                    <th style="width: 40%;">Operation</th>
                                </tr> 
                            </thead>    
                            <tbody>
                                <%
                                List<Reclamation> reclamationsList = (List<Reclamation>) session.getAttribute("reclamationsList");
                                if (reclamationsList != null && !reclamationsList.isEmpty()) {
                                    for (Reclamation reclamation : reclamationsList) {
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
                                        <button type="button" name="accepter" data-toggle="modal" data-target="#accepter_data_Modal_<%= reclamation.getID() %>" class="btn btn-info btn-xs" style="background-color: #afc8a4; color: #385e82">
                                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                                        </button>
                                        &nbsp;&nbsp;
                                        <button type="button" name="refuser" data-toggle="modal" data-target="#refuser_data_Modal_<%= reclamation.getID() %>" class="btn btn-info btn-xs" style="background-color: #afc8a4; color: #385e82">
                                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                        </button>
                                    </td>
                                </tr>

                                <!-- Modal for accepting reclamation -->
                                <div id="accepter_data_Modal_<%= reclamation.getID() %>" class="modal fade" data-backdrop="static" data-keyboard="false">  
                                    <div class="modal-dialog">  
                                        <div class="modal-content">  
                                            <div class="modal-header" style="background-color: #afc8a4; color: #385e82">  
                                                <h4 class="modal-title text-center">Accepter la réclamation</h4>  
                                            </div>  
                                            <div class="modal-body"> 
                                                <form method="post" action="ModifyReclamationServlet" class="form">
                                                    <input type="hidden" name="reclamationID" value="<%= reclamation.getID() %>">
                                                    <input type="hidden" name="action" value="accepter">
                                                    <div class="form-group">
                                                        <label for="motifAccepter">Motif :</label>
                                                        <select id="motifAccepter" name="motifAccepter" class="form-control">
                                                            <option value="Réclamation accepté">Réclamation accepté</option>
                                                            <option value="Indice pour les démarches juridiques">Indice pour les démarches juridiques</option>
                                                            <option value="Traitement effectué">Traitement effectué</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal-footer">  
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
                                                        <button type="submit" class="btn btn-primary">Accepter</button>
                                                    </div>
                                                </form>
                                            </div>  
                                        </div>  
                                    </div>  
                                </div>

                                <!-- Modal for rejecting reclamation -->
                                <div id="refuser_data_Modal_<%= reclamation.getID() %>" class="modal fade" data-backdrop="static" data-keyboard="false">  
                                    <div class="modal-dialog">  
                                        <div class="modal-content">  
                                            <div class="modal-header" style="background-color: #afc8a4; color: #385e82">  
                                                <h4 class="modal-title text-center">Refuser la réclamation</h4>  
                                            </div>  
                                            <div class="modal-body"> 
                                                <form method="post" action="ModifyReclamationServlet" class="form">
                                                    <input type="hidden" name="reclamationID" value="<%= reclamation.getID() %>">
                                                    <input type="hidden" name="action" value="refuser">
                                                    <div class="form-group">
                                                        <label for="motifRefuser">Motif :</label>
                                                        <select id="motifRefuser" name="motifRefuser" class="form-control">
                                                            <option value="Erreur Administrative">Erreur Administrative</option>
                                                            <option value="Non-Conformité aux Normes">Non-Conformité aux Normes</option>
                                                            <option value="Engagement non Respecté">Engagement non Respecté</option>
                                                            <option value="Non-Conformité aux Conditions">Non-Conformité aux Conditions</option>
                                                            <option value="Erreur de Compréhension">Erreur de Compréhension</option>
                                                            <option value="Hors Délai">Hors Délai</option>
                                                            <option value="Problème non Répétable">Problème non Répétable</option>
                                                            <option value="Réglementation non Applicable">Réglementation non Applicable</option>
                                                            <option value="Abus de Réclamation">Abus de Réclamation</option>
                                                            <option value="Motifs non Fondés">Motifs non Fondés</option>
                                                            <option value="Responsabilité Tiers">Responsabilité Tiers</option>
                                                        </select>
                                                    </div>
                                                    <div class="modal-footer">  
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
                                                        <button type="submit" class="btn btn-danger">Refuser</button>
                                                    </div>
                                                </form>
                                            </div>  
                                        </div>  
                                    </div>  
                                </div>
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
</body>
</html>
