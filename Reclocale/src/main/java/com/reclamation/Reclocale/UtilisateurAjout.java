package com.reclamation.Reclocale;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.reclamation.dao.UtilisateursLogin;
import com.reclamation.model.Utilisateurs;

@WebServlet("/UtilisateurAjout")
public class UtilisateurAjout extends HttpServlet {
	   public UtilisateursLogin utilisateursLogin;
	   public UtilisateurAjout() {
	        super();
	        utilisateursLogin = new UtilisateursLogin();
	    
       utilisateursLogin = new UtilisateursLogin();

       
	   }
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String CIN = request.getParameter("CIN");
	        String nom = request.getParameter("nom");
	        String prenom = request.getParameter("prenom");
	        String pwd = request.getParameter("pwd");
	        String Ntel = request.getParameter("province");
	        String province = request.getParameter("Ntel");
	        String status = request.getParameter("Status");
	        String service = request.getParameter("service");
	        
	       String dateNaissanceStr = request.getParameter("datenaissance");
	        java.util.Date parsedDate = null;
	        java.sql.Date dateNaissance = null;

	        if (dateNaissanceStr != null && !dateNaissanceStr.isEmpty()) {
	            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	            try {
	                parsedDate = dateFormat.parse(dateNaissanceStr);
	            } catch (ParseException e) {
	                e.printStackTrace();
	            }

	            if (parsedDate != null) {
	                dateNaissance = new java.sql.Date(parsedDate.getTime());
	            }
	        }

	        Utilisateurs utilisateur = new Utilisateurs(CIN, nom, prenom, pwd, dateNaissance, Ntel, province,"Agent", "Actif", service);

	        utilisateursLogin.insertUtilisateur(utilisateur);

	        response.sendRedirect("index.jsp");
	    }

	 
	}
