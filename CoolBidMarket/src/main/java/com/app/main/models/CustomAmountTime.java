package com.app.main.models;

import java.io.Serializable;

public class CustomAmountTime implements Serializable {
	private Integer id;
	private Integer amountTimeName;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAmountTimeName() {
		return amountTimeName;
	}
	public void setAmountTimeName(Integer amountTimeName) {
		this.amountTimeName = amountTimeName;
	}
	public CustomAmountTime(Integer id, Integer amountTimeName) {
		super();
		this.id = id;
		this.amountTimeName = amountTimeName;
	}
	public CustomAmountTime() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
