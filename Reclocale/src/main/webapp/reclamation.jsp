<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <%@ include file="navAdmin.jsp" %>

    <div class="container-fluid">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading" style="background-color: #afc8a4; color: #385e82; height: 40px;">
                    <h5 class="text-center" style="margin-top: 4px; font-weight: bold;">Liste des Réclamations</h5>
                </div>
                <div class="panel-body"> 
                    <br /><br />  
                    <div class="">  
                        
                        <br>
                        <div id="reclamation_table" class="table-responsive">  
                            <table id="employee_data" class="table table-bordered"> 
                                <thead>  
                                    <tr>  
                                        <th style="width: 10%;">ID</th> 
                                        <th style="width: 10%;">Nom</th>
                                        <th style="width: 10%;">Type</th>                                    
                                        <th style="width: 15%;">Date de création</th>
                                        <th style="width: 15%;">Date de résolution</th>
                                        <th style="width: 30%;">Description</th>
                                        <th style="width: 5%;">Status</th>
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
                                        <td></td> 
                                    </tr>  
                                </tbody>
                            </table> 
                        </div>  
                    </div>  
                </div>
            </div>
        </div> 
    </div>
</body>
</html>
