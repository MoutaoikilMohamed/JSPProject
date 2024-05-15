<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/sds.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <script src="../js/jquery-1.10.2.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <style>
        b {
            animation: color-change 1s infinite;
        }

        @keyframes color-change {
            0% { color: #069869; }
            100% { color: #82cbb4; }
        }
    </style>
</head>
<body>
<%@ include file="navAdmin.jsp" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading" style="background-image: linear-gradient(#2a5915, #213321); border-color: #213321; height: 5px;"></div>
                    <div class="panel-body">
                        <p style="font-family: 'Courier New'; text-align: center;">Bienvenue sur votre espace <strong>admin</strong> de plateforme de gestion des réclamations locale ! Ici, vous trouverez toutes les informations importantes sur les réclamations et les utilisateurs de votre système, y compris leur progression et leurs évaluations. Nous avons conçu cette page pour faciliter la gestion des réclamations et pour vous permettre de prendre des décisions éclairées en temps réel. Nous espérons que vous apprécierez l'expérience utilisateur de notre application et que cet espace vous aidera à maximiser l'efficacité de votre gestion.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>

<div class="container tableau-stat text-center">
    <h1 class="text-center text-success">Les différentes statistiques de l'année <b><%= new java.util.Date().getYear() + 1900 %></b></h1>
    <br><br>
    <div class="row">
        <div class="col-md-6">
            <div class="well well-lg" style="border: solid; border-color: #98d9b6; background-color: #f3fbf6;">
                <span style="color: #98d9b6;" class="bi bi-briefcase-fill"></span>
                <div class="effectif">
                    Total des réclamations <a href="reclamation.jsp" style="color: #98d9b6;"><div style="color: #98d9b6; font-size: large;">Count number</div></a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="well well-lg" style="border: solid; border-color: #069869; background-color: #e6f4f0;">
                <span class="glyphicon glyphicon-user" style="color: #069869;"></span>
                <div class="effectif">
                    Nombre des utilisateurs <a href="utilisateur.jsp" style="color: #069869;"><div style="color: #069869; font-size: large;" class="nbr">Count number</div></a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
