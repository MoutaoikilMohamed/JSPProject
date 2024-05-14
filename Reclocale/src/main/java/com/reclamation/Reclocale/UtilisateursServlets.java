package com.reclamation.Reclocale;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.reclamation.dao.UtilisateursLogin;

public class UtilisateursServlets extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UtilisateursLogin utilisateursLogin;

    public UtilisateursServlets() {
        super();
        utilisateursLogin = new UtilisateursLogin();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cin = request.getParameter("cin");
        String motDePasse = request.getParameter("password");

        boolean utilisateurValide = utilisateursLogin.verifierConnexion(cin, motDePasse);

        if (utilisateurValide) {
            String role = utilisateursLogin.getRole(cin);
            HttpSession session = request.getSession();
            session.setAttribute("cin", cin);
            session.setAttribute("role", role);
            switch (role) {
                case "Citoyen":
                    response.sendRedirect("Citoyen.jsp");
                    break;
                case "Agent":
                    response.sendRedirect("Agent.jsp");
                    break;
                case "Administrateur":
                    response.sendRedirect("Administrateur.jsp");
                    break;
                default:
                    response.sendRedirect("index.jsp");
                    break;
            }
        } else {
        	response.sendRedirect("index.jsp");

        	HttpSession session = request.getSession();
        	session.setAttribute("erreur", "CIN ou mot de passe incorrect");

        }
    }
}
