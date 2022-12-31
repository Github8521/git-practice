package com.zohocrm.services;

import java.util.List;

import com.zohocrm.entities.Lead;


public interface LeadService {
	
	public void saveLead(Lead lead) ;

	public List<Lead> findAll();

	public Lead getLead(long id);

	public void deleteById(long id);

	

	

}
