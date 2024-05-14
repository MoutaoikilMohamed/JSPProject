<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <% String error = request.getParameter("error"); %>
    <% if (error != null && error.equals("1")) { %>
        <p style="color: red;">Erreur de connexion. Veuillez vérifier vos informations d'identification.</p>
    <% } %>
    
    <form action="UtilisateursServlets" method="post">
        <label for="cin">CIN:</label>
        <input type="text" id="cin" name="cin" required><br><br>
        <label for="password">Mot de passe:</label>
        <input type="password" id="password" name="password" required><br><br>
        <button type="submit">Connexion</button>
    </form>
</body>
</html>