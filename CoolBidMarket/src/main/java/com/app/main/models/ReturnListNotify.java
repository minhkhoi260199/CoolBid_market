package com.app.main.models;

import java.util.List;

public class ReturnListNotify {
	private List<CustomNotify> notifies;
	private int totalNotify;
	public List<CustomNotify> getNotifies() {
		return notifies;
	}
	public void setNotifies(List<CustomNotify> notifies) {
		this.notifies = notifies;
	}
	public int getTotalNotify() {
		return totalNotify;
	}
	public void setTotalNotify(int totalNotify) {
		this.totalNotify = totalNotify;
	}
	public ReturnListNotify() {
		// TODO Auto-generated constructor stub
	}
	public ReturnListNotify(List<CustomNotify> notifies, int totalNotify) {
		super();
		this.notifies = notifies;
		this.totalNotify = totalNotify;
	}
	
	
}
