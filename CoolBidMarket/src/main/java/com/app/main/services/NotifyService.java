package com.app.main.services;

import java.util.List;

import com.app.main.models.CustomNotify;
import com.app.main.models.Notify;

public interface NotifyService {
	public Notify save(Notify notify); 
	public List<CustomNotify> getListNotify(int user_id, int status_id);
	public int getTotalNotify(int user_id, int status_id);
	public Notify getNotifyById(int id);
}
