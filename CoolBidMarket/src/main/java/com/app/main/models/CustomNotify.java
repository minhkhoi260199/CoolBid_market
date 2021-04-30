package com.app.main.models;

public class CustomNotify {
	private String content;
	private int notify_id;
	private String user_name;
	private int status_id;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getNotify_id() {
		return notify_id;
	}
	public void setNotify_id(int notify_id) {
		this.notify_id = notify_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getStatus_id() {
		return status_id;
	}
	public void setStatus_id(int status_id) {
		this.status_id = status_id;
	}
	public CustomNotify(String content, int notify_id, String user_name, int status_id) {
		super();
		this.content = content;
		this.notify_id = notify_id;
		this.user_name = user_name;
		this.status_id = status_id;
	}
	public CustomNotify() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
