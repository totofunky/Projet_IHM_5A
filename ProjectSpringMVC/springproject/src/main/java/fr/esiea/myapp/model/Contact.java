package fr.esiea.myapp.model;

import java.util.Date;

public class Contact {
    private String id;
    private String prenom;
    private String nom;
    private String email;
    private String dateNaissance;
    private Adresse adresse;
    
	public Contact () {
		super();
	}
	
    public Contact(String nom, String prenom, String email, String dateNaissance, Adresse adresse) {
    	this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.dateNaissance = dateNaissance;
        this.adresse = adresse;
    }
    
    public Adresse getAdresse() {
		return adresse;
	}

	public void setAdresse(Adresse adresse) {
		this.adresse = adresse;
	}

	public String getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	} 
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
