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

public class ReclamationDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/projetjsp";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "123456";
    private Connection connection;

    public ReclamationDAO() {
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
    
    public List<Reclamation> getAllReclamationscin(String CIN) {
        List<Reclamation> list = new ArrayList<>();
        String query = "SELECT * FROM reclamations WHERE CIN = ?";
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
    
    public List<Reclamation> getAllReclamations() {
        List<Reclamation> list = new ArrayList<>();
        try (Connection connection = getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM reclamation")) {
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
  

    public boolean updateReclamationStatus(int id, String status, String motif) {
        boolean rowUpdated = false;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(
                "UPDATE reclamation SET status = ?, motif = ? WHERE id = ?")) {
            statement.setString(1, status);
            statement.setString(2, motif);
            statement.setInt(3, id);
            rowUpdated = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdated;
    }
}