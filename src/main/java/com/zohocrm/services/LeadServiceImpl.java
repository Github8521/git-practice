package com.zohocrm.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Lead;
import com.zohocrm.repository.LeadRepository;
@Service
public class LeadServiceImpl implements LeadService {
	@Autowired
	private LeadRepository leadRepo;
	@Override
	public void saveLead(Lead lead) {
		leadRepo.save(lead);

	}
	@Override
	public List<Lead> findAll() {
		List<Lead> findAll = leadRepo.findAll();
		return findAll;
	}
	@Override
	public Lead getLead(long id) {
 Optional<Lead> findById = leadRepo.findById(id);
		Lead lead = findById.get();
		return lead;
	}
	@Override
	public void deleteById(long id) {
		leadRepo.deleteById(id);
		
	}

}
