package com.reclamation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import com.reclamation.model.Reclamation;
import com.reclamation.model.Utilisateurs;

public class UtilisateursLogin {
    private static final String URL = "jdbc:mysql://localhost:3306/projetjsp";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "123456";
    private Connection connection;

    public UtilisateursLogin() {
    }

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException ex) {
            JOptionPane.showMessageDialog(null, "JDBC Driver not found: " + ex.getMessage());
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Connection failed: " + ex.getMessage());
        }
        return conn;
    }
    
    public String getRole(String CIN) {
        String role = null;
        try {
            connection = getConnection();
            String sql = "SELECT role FROM utilisateurs WHERE CIN = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, CIN);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                role = resultSet.getString("role");
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return role;
    }

    public boolean verifierConnexion(String CIN, String motDePasse) {
        boolean utilisateurValide = false;
        try {
            connection = getConnection();
            String sql = "SELECT * FROM utilisateurs WHERE CIN = ? AND pwd = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, CIN);
            statement.setString(2, motDePasse);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                utilisateurValide = true;
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return utilisateurValide;
    }
    public List<Utilisateurs> getAllUtilisateurs() {
        List<Utilisateurs> list = new ArrayList<>();
        String query = "SELECT * FROM utilisateur";
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Utilisateurs utilisateur = new Utilisateurs(
                        rs.getString("CIN"),
                        rs.getString("nom"),
                        rs.getString("prenom"),
                        rs.getString("pwd"),
                        rs.getDate("date_naissance"),
                        rs.getString("Ntel"),
                        rs.getString("province"),
                        rs.getString("role"),
                        rs.getString("status"),
                        rs.getString("Service")
                    );
                    list.add(utilisateur);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    
    public List<Utilisateurs> getAllUtilisateursCin(String CIN) {
        List<Utilisateurs> list = new ArrayList<>();
        String query = "SELECT * FROM utilisateur WHERE CIN=?";
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, CIN);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Utilisateurs utilisateur = new Utilisateurs(
                        rs.getString("CIN"),
                        rs.getString("nom"),
                        rs.getString("prenom"),
                        rs.getString("pwd"),
                        rs.getDate("date_naissance"),
                        rs.getString("Ntel"),
                        rs.getString("province"),
                        rs.getString("role"),
                        rs.getString("status"),
                        rs.getString("Service")
                    );
                    list.add(utilisateur);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<Reclamation> getAllReclamations() {
        List<Reclamation> list = new ArrayList<>();
        String query = "SELECT * FROM reclamation";
        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                Reclamation reclamation = new Reclamation(
                    rs.getInt("ID"),
                    rs.getString("nom"),
                    rs.getString("type"),
                    rs.getString("localisation"),
                    rs.getDate("date_creation"),
                    rs.getDate("date_resolution"),
                    rs.getString("description"),
                    rs.getString("status"),
                    rs.getString("CIN"),
                    rs.getString("motif")
                );
                list.add(reclamation);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public List<Reclamation> getAllReclamationscin(String CIN) {
        List<Reclamation> list = new ArrayList<>();
        String query = "SELECT * FROM reclamation WHERE CIN = ?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, CIN);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Reclamation reclamation = new Reclamation(
                        resultSet.getInt("ID"),
                        resultSet.getString("nom"),
                        resultSet.getString("type"),
                        resultSet.getString("localisation"),
                        resultSet.getDate("date_creation"),
                        resultSet.getDate("date_resolution"),
                        resultSet.getString("description"),
                        resultSet.getString("status"),
                        resultSet.getString("CIN"),
                        resultSet.getString("motif")
                    );
                    list.add(reclamation);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
 
}


