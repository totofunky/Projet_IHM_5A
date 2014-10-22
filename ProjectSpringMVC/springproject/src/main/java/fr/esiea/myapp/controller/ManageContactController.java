package fr.esiea.myapp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.esiea.myapp.model.Adresse;
import fr.esiea.myapp.model.Contact;
import fr.esiea.myapp.service.ContactMetier;

@Controller
public class ManageContactController {

	@Autowired
	ContactMetier contactImplMetier;

	@RequestMapping(value = "/Home")
	public String pageHome(Model model) {
		
		model.addAttribute("listeContact", contactImplMetier.getAllContacts());
		contactImplMetier.getAllContacts();
		
		return "Home";
	}

	@RequestMapping(value = "/searchContact")
	public String searchContact(Model model, @RequestParam(value = "id") String id) {
		List<Contact> list = new ArrayList<Contact>();
		
		if (id.isEmpty()) {
			model.addAttribute("listeContact", contactImplMetier.getAllContacts());
			contactImplMetier.getAllContacts();
			
			return "Home";
		}
		else{
			for(Contact c: contactImplMetier.getAllContacts()){

				if(c.getNom().toLowerCase().equals(id.toLowerCase()) || c.getPrenom().toLowerCase().equals(id.toLowerCase()) || c.getId().equals(id)){
					list.add(c);
				}
			}
		}
			model.addAttribute("listeContact", list);
			
		// Pour masquer la variable dans l'URL
		return "Home";
	}

	@RequestMapping(value = "/contact_form", method = RequestMethod.POST)
	public String addContact() {
		return "contact_form";
	}

	@RequestMapping(value = "/addContact")
	public String addContact(Model model, Contact c, Adresse a) {
		System.out.print(a.getVille());
		
		contactImplMetier.addContact(c,a);
		System.out.print(c.getAdresse().getVille());
		model.addAttribute("listeContact", contactImplMetier.getAllContacts());

		return "Home";
	}
	
	@RequestMapping(value="/deleteContact")
	public String deleteContact(Model model,@RequestParam String id){
		System.out.println(id);
		contactImplMetier.deleteContact(id);
		model.addAttribute("listeContact", contactImplMetier.getAllContacts());
		return "Home";
	}

	@RequestMapping(value="/modifyContact")
	public String modifyContact(Model model,@RequestParam String id){
		//System.out.println(id);
		model.addAttribute("idContact", id);
		model.addAttribute("contact", contactImplMetier.getContactById(id));
		System.out.println(contactImplMetier.getContactById(id).getNom());
		return "modifyContact";
	}
	
	@RequestMapping(value="/update")
	public String update(Model model, Contact c, Adresse a){
		contactImplMetier.deleteContact(c.getId());
		contactImplMetier.updateContact(c,a,c.getId());
		model.addAttribute("listeContact", contactImplMetier.getAllContacts());
		return "Home";
	}
	
	// private ArrayList<Contact> listContacts = new ArrayList<Contact>();
	// private int id = 0;
	//
	// @RequestMapping(value = "/contact_form", method = RequestMethod.GET)
	// public ModelAndView contact() {
	// return new ModelAndView("contact_form", "command", new Contact());
	// }
	//
	// @RequestMapping(value = "/Home", method = RequestMethod.POST)
	// public String addContact(@ModelAttribute("contact") Contact contact,
	// ModelMap model) {
	//
	// contact.setId(id);
	// model.addAttribute("nom", contact.getNom());
	// model.addAttribute("prenom", contact.getPrenom());
	//
	//
	// listContacts.add(contact);
	// for(int i = 0; i<listContacts.size(); i++)
	// System.out.println(listContacts.get(i).getNom().toString() + " " +
	// listContacts.get(i).getPrenom().toString());
	// //model.addAttribute("id", contact.getId());
	// model.addAttribute("listContacts", listContacts);
	// id++;
	// return "Home";
	// }
}
