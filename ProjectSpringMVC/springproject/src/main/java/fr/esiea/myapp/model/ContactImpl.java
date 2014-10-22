package fr.esiea.myapp.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ContactImpl implements ContactDAO{
	
	private List<Contact> contacts = new ArrayList<Contact>();
	
	public void init(){
		System.out.println("Hello init");
		addContact(new Contact("THORIN","Antoine","thorin@et.esiea.fr","09/06/1991", new Adresse("8","allée de la haie aux prêtre","78610","Auffargis")));
		addContact(new Contact("MICHEL","Dimitry","toto@gmail.com","10/12/1991", new Adresse("20","rue de la mairie","75002","Paris")));
		addContact(new Contact("DUPONT","Alain","alain@gmail.com","01/04/1991", new Adresse("75","boulevard St Martin","75000","Paris")));
		System.out.print(contacts.get(0).getEmail().toString());
	}
	
	@Override
	public void addContact(Contact c) {
		c.setId(new Integer((contacts.size() + 1)).toString());
		contacts.add(c);				
	}
	@Override
	public void addContact(Contact c, Adresse a) {
		c.setAdresse(a);
		c.setId(new Integer((contacts.size() + 1)).toString());
		contacts.add(c);				
	}
	@Override
	public void deleteContact(String id) {
		contacts.remove(getContactById(id));
		
	}

	@Override
	public Contact getContactById(String id) {
		Contact contact = null;
		for(Contact c: contacts){
			if(c.getId().equals(id)){
				contact = c;
				break;
			}
		}
		return contact;
	}

	@Override
	public List<Contact> getAllContact() {
		// TODO Auto-generated method stub
		return contacts;
	}

	@Override
	public Contact modifyContact(int id) {
		return contacts.get(id);	
	}

	@Override
	public void updateContact(Contact c, Adresse a, String id) {
		c.setAdresse(a);
		c.setId(id);
		contacts.add(c);	
	}
}
