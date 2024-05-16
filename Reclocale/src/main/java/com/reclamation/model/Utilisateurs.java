package com.reclamation.model;

import java.sql.Date;

public class Utilisateurs {
    private String CIN;
    private String nom;
    private String prenom;
    private String pwd;
    private Date dateNaissance;
    private String province;
    private String numeroTelephone;
    private String role;
    private String status;
    private String service;

    public Utilisateurs(String CIN, String nom, String prenom, String pwd, Date dateNaissance,
            String province, String numeroTelephone, String role, String status, String service) {
this.CIN = CIN;
this.nom = nom;
this.prenom = prenom;
this.pwd = pwd;
this.dateNaissance = dateNaissance;
this.province = province;
this.numeroTelephone = numeroTelephone;
this.role = role;
this.status = status;
this.service = service;
}

    public String getCIN() {
        return CIN;
    }

    public void setCIN(String CIN) {
        this.CIN = CIN;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getNumeroTelephone() {
        return numeroTelephone;
    }

    public void setNumeroTelephone(String numeroTelephone) {
        this.numeroTelephone = numeroTelephone;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    @Override
    public String toString() {
        return "Utilisateurs{" +
                "CIN='" + CIN + '\'' +
                ", nom='" + nom + '\'' +
                ", prenom='" + prenom + '\'' +
                ", pwd='" + pwd + '\'' +
                ", dateNaissance='" + dateNaissance + '\'' +
                ", province='" + province + '\'' +
                ", numeroTelephone='" + numeroTelephone + '\'' +
                ", role='" + role + '\'' +
                ", status='" + status + '\'' +
                ", service='" + service + '\'' +
                '}';
    }
