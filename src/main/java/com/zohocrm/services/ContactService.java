package com.zohocrm.services;

import java.util.List;

import com.zohocrm.entities.Contact;

public interface ContactService {

	void save(Contact contact);

	List<Contact> findAll();

}
