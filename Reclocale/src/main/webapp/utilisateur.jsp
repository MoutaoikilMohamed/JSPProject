<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" type="text/css" href="../css/stylehome.css">
    <title>Gestion des utilisateurs</title>
</head>
<body>
    <%@ include file="navAdmin.jsp" %>
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading" style="background-color: #afc8a4; color: #385e82; height: 40px;">
                    <h5 class="text-center" style="margin-top: 4px; font-weight: bold;">Liste des Utilisateurs</h5>
                </div>
                <div class="panel-body"> 
                    <br /><br />  
                    <div class="" style="margin-left: 5%; margin-right: 5%;">  
                        <div align="right">  
                            <button type="button" name="add" id="add" data-toggle="modal" data-target="#add_data_Modal" class="btn" style="background-color: #afc8a4; color: #385e82">
                                <span class="glyphicon glyphicon-plus"></span>&nbsp;Ajouter
                            </button>  
                        </div> 
                        <br>
                        <div id="employee_table" class="table table_responsive">  
                            <table id="employee_data" class="table table-bordered"> 
                                <thead>  
                                    <tr>  
                                        <th style="width: 10%;">CIN</th> 
                                        <th style="width: 15%;">Nom</th>
                                        <th style="width: 15%;">Prénom</th>
                                        <th style="width: 15%;">N_Téléphone</th>                                    
                                        <th style="width: 15%;">Role</th>
                                        <th style="width: 15%;">Service</th>
                                        <th style="width: 20%;">Actions</th>
                                    </tr> 
                                </thead>    
                                <tbody>
                                    <tr>  
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>  
                                        <td>
                                            <button type="button" name="edit" id="edit" data-toggle="modal" data-target="#edit_data_Modal" class="btn btn-info btn-xs" style="background-color: #afc8a4; color: #385e82">
                                                <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                                            </button>
                                            &nbsp;&nbsp;
                                        
                                                <button type="button" name="delete" id="delete" data-toggle="modal" data-target="#delete_data_Modal" class="btn btn-info btn-xs" style="background-color: #afc8a4; color: #385e82">
                                                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                                </button>
                                           
                                        </td>       
                                    </tr>
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
                <form method="post" action="insertutil" class="form"  enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="nom">Nom :</label>
                        <input type="text" name="nom" class="form-control" id="nom" placeholder="Nom">
                    </div>
                    <div class="form-group">
                        <label for="nom">CIN :</label>
                        <input type="text" name="CIN" class="form-control" id="nom" placeholder="CIN">
                    </div>
                    <div class="form-group">
                        <label for="type">Prenom :</label>
                        <input type="text" name="prenom" class="form-control" id="type" placeholder="Type">
                    </div>
                    <div class="form-group">
                        <label for="description">Numiro de téléphone :</label>
                        <input type="text" name="Ntel" class="form-control" id="Ntel" ></input>
                    </div>
                    
                    <div class="form-group">
                        <label for="description">Service :</label>
                        <input type="text" name="service" class="form-control" id="Ntel" ></input>
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
                        <label for="nom">CIN :</label>
                        <input type="text" name="CIN" class="form-control" id="nom" placeholder="CIN">
                    </div>
                    <div class="form-group">
                        <label for="type">Prenom :</label>
                        <input type="text" name="prenom" class="form-control" id="type" placeholder="Type">
                    </div>
                    <div class="form-group">
                        <label for="description">Numiro de téléphone :</label>
                        <input type="text" name="Ntel" class="form-control" id="Ntel" ></input>
                    </div>
                    
                    <div class="form-group">
                        <label for="description">Service :</label>
                        <input type="text" name="service" class="form-control" id="Ntel" ></input>
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
                 <label>Etes-vous sûr de vouloir supprimer cette utilisateur ?</label>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
                <button type="button" class="btn btn-primary">Confirmer la suppression</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
