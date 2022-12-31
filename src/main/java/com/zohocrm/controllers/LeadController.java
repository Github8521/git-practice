package com.zohocrm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.services.ContactService;
import com.zohocrm.services.LeadService;

@Controller
public class LeadController {
	@Autowired
	private LeadService leadService;
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/view")
	public String viewCreatedPage() {
		return "create_lead";
	}
	
	@RequestMapping("/saveLead")
	public String listAllLeads(@ModelAttribute("lead") Lead lead,ModelMap modalMap) {
		leadService.saveLead(lead);
		modalMap.addAttribute("lead", lead);
		return "lead_info";
	}
	
	@RequestMapping("/listAllLeads")
	public String listAllLeads(ModelMap modalMap) {
		List<Lead> findAll = leadService.findAll();
		modalMap.addAttribute("findAll",findAll);
		return "lead_result";
	}
	@RequestMapping("/getLeadById")
	public String getLeadById(@RequestParam("id")long id,ModelMap modalMap) {
	Lead lead=	leadService.getLead(id);
	modalMap.addAttribute("lead", lead);
		return "lead_info";
	}
	@RequestMapping("/convertLead")
	public String convertLead(@RequestParam("id")long id,ModelMap modalMap) {
		Lead lead = leadService.getLead(id);
		Contact contact=new Contact();
		contact.setId(lead.getId());
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setEmail(lead.getEmail());
		contact.setLeadSource(lead.getLeadSource());
		contact.setMobile(lead.getMobile());
		 contactService.save(contact);
		 leadService.deleteById(id);
		 List<Contact> findAll = contactService.findAll();
		 modalMap.addAttribute("findAll",findAll);
		return "contact_result";
	}
	
	@RequestMapping("/getAllContact")
	public String getAllContact(ModelMap modalMap) {
		List<Contact> findAll = contactService.findAll();
		modalMap.addAttribute("findAll",findAll);
		return "contact_result";
	}

}
