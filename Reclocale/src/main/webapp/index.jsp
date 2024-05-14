<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="css/StyleLogin.css">
</head>
            <img src="img/profile.png" alt="Login Image" width="150px" height="150px">

<body class="align">

    <div class="login">
        <header class="login__header">
            <!-- Add image here -->
            <h2>
                <svg class="icon">
                    <use xlink:href="#icon-lock" />
                </svg>Authentification
            </h2>
        </header>
        <form action="UtilisateursServlets" class="login__form" method="POST">
            <div>
                <label for="email">CIN</label>
                <input type="CIN" id="email" name="cin" placeholder="Votre CIN">
            </div>
            <div>
                <label for="password">Mot de passe</label>
                <input type="password" id="password" name="password" placeholder="Votre Mot de passe">
            </div>
            <div>
                <input class="button" type="submit" value="Sign In">
                
            </div>
            
        </form>
         <c:if test="${not empty erreur}">
                    <p style="color: red;">${erreur}</p>
                </c:if>
    </div>

    <svg xmlns="http://www.w3.org/2000/svg" class="icons">
        <symbol id="icon-lock" viewBox="0 0 448 512">
            <path d="M400 224h-24v-72C376 68.2 307.8 0 224 0S72 68.2 72 152v72H48c-26.5 0-48 21.5-48 48v192c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V272c0-26.5-21.5-48-48-48zm-104 0H152v-72c0-39.7 32.3-72 72-72s72 32.3 72 72v72z" />
        </symbol>
    </svg>
</body>
</html>
