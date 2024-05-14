<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard Admin</title>
</head>
<body>
    <h1>Dashboard Admin</h1>
    
    <% 
    String cin = (String) session.getAttribute("cin");
    String role = (String) session.getAttribute("role");
    %>
    
    <p>CIN: <%= cin %></p>
    <p>Rôle: <%= role %></p>
    
</body>
</html>
