package com.reclamation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

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
}