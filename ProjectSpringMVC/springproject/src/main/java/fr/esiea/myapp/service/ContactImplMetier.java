package fr.esiea.myapp.service;

import java.util.List;

import fr.esiea.myapp.model.Adresse;
import fr.esiea.myapp.model.Contact;
import fr.esiea.myapp.model.ContactDAO;

import org.springframework.stereotype.Component;

@Component
public class ContactImplMetier implements ContactMetier {
	
	private ContactDAO dao;

	@Override
	public void addContact(Contact c) {
		dao.addContact(c);
	}
	@Override
	public void addContact(Contact c, Adresse a) {
		dao.addContact(c,a);
	}

	@Override
	public void deleteContact(String id) {
		dao.deleteContact(id);
	}

	@Override
	public List<Contact> getAllContacts() {
		return dao.getAllContact();
	}

	@Override
	public Contact getContactById(String id) {
		return dao.getContactById(id);
	}
	public void setDao(ContactDAO dao) {
		this.dao = dao;
	}
	@Override
	public Contact modifyContact(String id) {
		// TODO Auto-generated method stub
		return dao.getContactById(id);
	}
	@Override
	public void updateContact(Contact c, Adresse a, String id) {
		dao.updateContact(c,a,id);
	}
}
