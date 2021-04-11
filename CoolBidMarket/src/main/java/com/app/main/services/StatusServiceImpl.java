package com.app.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.main.models.Status;
import com.app.main.repositories.StatusRepository;

@Service("statusService")
public class StatusServiceImpl implements StatusService {
	@Autowired
	StatusRepository statusRepository;

	@Override
	public Status findById(int id) {
		// TODO Auto-generated method stub
		return statusRepository.findById(id);
	}
}
