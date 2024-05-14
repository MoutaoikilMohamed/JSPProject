package com.reclamation.model;
import java.util.Date;

public class Reclamation {
    private int ID;
    private String nom;
    private String type;
    private String localisation;
    private Date dateCreation;
    private Date dateResolution;
    private String description;
    private String status;
    private String CIN;
    private String motif;

    public Reclamation(int ID, String nom, String type, String localisation, Date dateCreation,
                       Date dateResolution, String description, String status, String CIN, String motif) {
        this.ID = ID;
        this.nom = nom;
        this.type = type;
        this.localisation = localisation;
        this.dateCreation = dateCreation;
        this.dateResolution = dateResolution;
        this.description = description;
        this.status = status;
        this.CIN = CIN;
        this.motif = motif;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLocalisation() {
        return localisation;
    }

    public void setLocalisation(String localisation) {
        this.localisation = localisation;
    }

    public Date getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(Date dateCreation) {
        this.dateCreation = dateCreation;
    }

    public Date getDateResolution() {
        return dateResolution;
    }

    public void setDateResolution(Date dateResolution) {
        this.dateResolution = dateResolution;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCIN() {
        return CIN;
    }

    public void setCIN(String CIN) {
        this.CIN = CIN;
    }

    public String getMotif() {
        return motif;
    }

    public void setMotif(String motif) {
        this.motif = motif;
    }

    @Override
    public String toString() {
        return "Reclamation{" +
                "ID=" + ID +
                ", nom='" + nom + '\'' +
                ", type='" + type + '\'' +
                ", localisation='" + localisation + '\'' +
                ", dateCreation=" + dateCreation +
                ", dateResolution=" + dateResolution +
                ", description='" + description + '\'' +
                ", status='" + status + '\'' +
                ", CIN='" + CIN + '\'' +
                ", motif='" + motif + '\'' +
                '}';
    }
}