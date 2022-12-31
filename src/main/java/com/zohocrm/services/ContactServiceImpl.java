package com.zohocrm.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Contact;
import com.zohocrm.repository.ContactRepositiry;
@Service
public class ContactServiceImpl implements ContactService {
@Autowired
private ContactRepositiry contactRepo;
	@Override
	public void save(Contact contact) {
		 contactRepo.save(contact);
	}
	@Override
	public List<Contact> findAll() {
		List<Contact> findAll = contactRepo.findAll();
		return findAll;
	}

}
