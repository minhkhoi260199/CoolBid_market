package com.app.main.services;

import com.app.main.models.AmountTime;

public interface AmountTimeService {
	public Iterable<AmountTime> findAll();
	public AmountTime findById(Integer id);
}
