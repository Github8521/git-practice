package com.zohocrm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zohocrm.entities.Contact;

public interface ContactRepositiry extends JpaRepository<Contact, Long> {

}
