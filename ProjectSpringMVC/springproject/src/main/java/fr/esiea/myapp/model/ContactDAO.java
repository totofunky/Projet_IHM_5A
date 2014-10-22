package fr.esiea.myapp.model;

import java.util.List;

public interface ContactDAO {
	public void addContact(Contact c);	
	public List<Contact> getAllContact();
	public void addContact(Contact c, Adresse a);
	public Contact modifyContact(int id);
	void updateContact(Contact c, Adresse a, String id);
	Contact getContactById(String id);
	void deleteContact(String id);
}
