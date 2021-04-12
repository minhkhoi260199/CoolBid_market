package com.app.main.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.main.models.AmountTime;
import com.app.main.repositories.AmountTimeRepository;

@Service("amoutTimeService")
public class AmountTimeServiceImpl implements AmountTimeService {
	@Autowired
	AmountTimeRepository amountTimeRepository;

	@Override
	public Iterable<AmountTime> findAll() {
		// TODO Auto-generated method stub
		return amountTimeRepository.findAll();
	}

	@Override
	public AmountTime findById(Integer id) {
		// TODO Auto-generated method stub
		return amountTimeRepository.findById(id).get();
	}


}
