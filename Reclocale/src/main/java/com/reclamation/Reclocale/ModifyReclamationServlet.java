package com.reclamation.Reclocale;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.reclamation.dao.ReclamationDAO;
import com.reclamation.dao.UtilisateursLogin;
import com.reclamation.model.Reclamation;
import com.reclamation.model.Utilisateurs;

@WebServlet("/ModifyReclamationServlet")
public class ModifyReclamationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ReclamationDAO reclamationDAO;

    public void init() {
        reclamationDAO = new ReclamationDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int reclamationID = Integer.parseInt(request.getParameter("reclamationID"));
        String action = request.getParameter("action");
        String status = "";
        String motif = "";

        if ("accepter".equals(action)) {
            status = "Accepté";
            motif = request.getParameter("motifAccepter");
        } else if ("refuser".equals(action)) {
            status = "Refusé";
            motif = request.getParameter("motifRefuser");
        }

        boolean isUpdated = reclamationDAO.updateReclamationStatus(reclamationID, status, motif);

        if (isUpdated) {
            request.getSession().setAttribute("message", "Réclamation mise à jour avec succès.");
            List<Reclamation> reclamationsList = reclamationDAO.getAllReclamations();
            request.getSession().setAttribute("reclamationsList", reclamationsList);
        } else {
            request.getSession().setAttribute("message", "Erreur lors de la mise à jour de la réclamation.");
        }
        response.sendRedirect("traitementReclamation.jsp");
    }
}
