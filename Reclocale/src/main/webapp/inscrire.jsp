<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Inscription</title>
    <link rel="stylesheet" type="text/css" href="css/stylehome.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/StyleLogin.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" /> 
</head>
<body>
    <div class="container">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #afc8a4; color: #385e82">
                    <h4 class="modal-title text-center">VEUILLEZ REMPLIR CE FORMULAIRE</h4>
                </div>
                <div class="modal-body">
                    <form method="post" action="UtilisateurAjout">
                        <div class="form-group">
                            <label for="nom">Nom:</label>
                            <input class="form-control" type="text" name="nom">
                        </div>
                        <div class="form-group">
                            <label for="prenom">Prénom:</label>
                            <input class="form-control" type="text" name="prenom">
                        </div>
                        <div class="form-group">
                            <label for="CIN">CIN:</label>
                            <input class="form-control" type="text" name="CIN">
                        </div>
                        <div class="form-group">
                            <label for="datenaissance">Date de naissance:</label>
                            <input class="form-control" type="date" name="datenaissance">
                        </div>
                      <div class="form-group">
    <label for="province">Province:</label>
    <select class="form-control" name="province">
        <option value="Agadir">Agadir</option>
        <option value="Al Hoceima">Al Hoceima</option>
        <option value="Beni Mellal">Beni Mellal</option>
        <option value="Casablanca">Casablanca</option>
        <option value="El Jadida">El Jadida</option>
        <option value="Essaouira">Essaouira</option>
        <option value="Fès">Fès</option>
        <option value="Kénitra">Kénitra</option>
        <option value="Khémisset">Khémisset</option>
        <option value="Khénifra">Khénifra</option>
        <option value="Khouribga">Khouribga</option>
        <option value="Laâyoune">Laâyoune</option>
        <option value="Marrakech">Marrakech</option>
        <option value="Meknès">Meknès</option>
        <option value="Nador">Nador</option>
        <option value="Ouarzazate">Ouarzazate</option>
        <option value="Oujda">Oujda</option>
        <option value="Rabat">Rabat</option>
        <option value="Salé">Salé</option>
        <option value="Tanger">Tanger</option>
        <option value="Taza">Taza</option>
        <option value="Tétouan">Tétouan</option>
        <!-- Ajoutez d'autres options selon vos besoins -->
    </select>
</div>
                        <div class="form-group">
                            <label for="Ntel">Numéro de téléphone:</label>
                            <input class="form-control" type="text" name="Ntel">
                        </div>
                      <div class="form-group">
    <label for="province">Service:</label>
    <select class="form-control" name="Service">
        <option value="Agadir">Juridique</option>
        <option value="Al Hoceima">Social</option>
        <option value="Beni Mellal">Administratif</option>
   
    </select>
</div>
                        <div class="form-group">
                            <label for="confpwd">Mot de passe:</label>
                            <input class="form-control" type="password" name="pwd">
                        </div>
                        
                        <div class="form-group">
                            <input type="submit" name="insert" id="insert" value="Enregistrer" class="btn btn-success" style="background-color: #afc8a4; color: #385e82"/>
                            <button type="button" class="btn btn-default" onclick="window.location='dashbordsta.jsp'" style="background-color: #afc8a4; color: #385e82">Annuler</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
