package com.app.main.models;

import java.util.List;

import org.springframework.validation.Errors;
import org.springframework.validation.ObjectError;

public class ReturnUserObject implements java.io.Serializable {
	private List<ObjectError> errors;
	private String username;
	private boolean result;
	public List<ObjectError> getErrors() {
		return errors;
	}
	public void setErrors(List<ObjectError> errors) {
		this.errors = errors;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public boolean isResult() {
		return result;
	}
	public void setResult(boolean result) {
		this.result = result;
	}
	public ReturnUserObject(List<ObjectError> errors, String username, boolean result) {
		super();
		this.errors = errors;
		this.username = username;
		this.result = result;
	}
	public ReturnUserObject() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
