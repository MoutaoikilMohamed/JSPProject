<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.reclamation.model.Utilisateurs" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Utilisateurs</title>
    <!-- Inclure les liens vers les fichiers CSS ou autres ressources nécessaires -->
</head>
<body>
    <%@ include file="navAdmin.jsp" %>
    <div class="container">
        <h2>Liste des Utilisateurs</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>CIN</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Téléphone</th>
                    <th>Rôle</th>
                    <!-- Ajoutez d'autres colonnes si nécessaire -->
                </tr>
            </thead>
            <tbody>
                <% 
                List<Utilisateurs> utilisateursList = (List<Utilisateurs>) session.getAttribute("utilisateursList");
                if (utilisateursList != null && !utilisateursList.isEmpty()) {
                    for (Utilisateurs utilisateur : utilisateursList) {
                %>
                        <tr>
                            <td><%= utilisateur.getCIN() %></td>
                            <td><%= utilisateur.getNom() %></td>
                            <td><%= utilisateur.getPrenom() %></td>
                            <td><%= utilisateur.getNumeroTelephone() %></td>
                            <td><%= utilisateur.getRole() %></td>
                            <!-- Ajoutez d'autres colonnes si nécessaire -->
                        </tr>
                <% 
                    }
                } else { 
                %>
                        <tr>
                            <td colspan="5">Aucun utilisateur trouvé</td>
                        </tr>
                <% 
                } 
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
