package com.app.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.main.models.Notify;
import com.app.main.repositories.NotifyRepository;

@Service("notifyService")
public class NotifyServiceImpl implements NotifyService {

	@Autowired
	NotifyRepository notifyRepository;
	
	@Override
	public Notify save(Notify notify) {
		// TODO Auto-generated method stub
		return notifyRepository.save(notify);
	}

}
