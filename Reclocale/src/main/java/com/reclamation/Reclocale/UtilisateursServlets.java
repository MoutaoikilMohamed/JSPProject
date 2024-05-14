package com.reclamation.Reclocale;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.reclamation.dao.UtilisateursLogin;

/**
 * Servlet implementation class UtilisateursServlets
 */
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
            response.sendRedirect("sucess.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }
    }
}