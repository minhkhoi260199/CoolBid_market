package com.app.main.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.main.models.CustomNotify;
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

	@Override
	public List<CustomNotify> getListNotify(int user_id, int status_id) {
		// TODO Auto-generated method stub
		List<CustomNotify> customNotifies = new ArrayList<CustomNotify>();
		List<Notify> notifies = (List<Notify>) notifyRepository.getListNotify(user_id, status_id);
		if (notifies == null) {
			customNotifies = null;
		}
		for(Notify notify : notifies) {
			CustomNotify customNotify = new CustomNotify();
			customNotify.setNotify_id(notify.getId());
			customNotify.setContent(notify.getContent());
			customNotify.setStatus_id(notify.getStatus().getId());
			customNotify.setUser_name(notify.getUsers().getUsername());
			customNotifies.add(customNotify);
		}
		
		return customNotifies;
	}

	@Override
	public int getTotalNotify(int user_id, int status_id) {
		// TODO Auto-generated method stub
		return notifyRepository.getTotalNotify(user_id, status_id);
	}

}
