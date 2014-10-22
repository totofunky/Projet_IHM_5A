package fr.esiea.myapp.service;

import java.util.List;

import fr.esiea.myapp.model.Adresse;
import fr.esiea.myapp.model.Contact;

public interface ContactMetier {
	public void addContact(Contact c);
	public List<Contact> getAllContacts();

	public void addContact(Contact c, Adresse a);

	void updateContact(Contact c, Adresse a, String id);
	Contact getContactById(String id);
	Contact modifyContact(String id);
	void deleteContact(String id);
}
