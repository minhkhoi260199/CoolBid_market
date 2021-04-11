package com.app.main.models;

import java.io.Serializable;

public class RoleLimit implements Serializable {
	private Integer id;
	private String name;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public RoleLimit(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public RoleLimit() {
		super();
		// TODO Auto-generated constructor stub
	}
}
