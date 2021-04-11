package com.app.main.models;

import java.io.Serializable;
import java.util.List;

import org.springframework.validation.ObjectError;

public class ReturnProductObject implements Serializable {
	private List<ObjectError> errors;
	private boolean result;
	public List<ObjectError> getErrors() {
		return errors;
	}
	public void setErrors(List<ObjectError> errors) {
		this.errors = errors;
	}
	public boolean isResult() {
		return result;
	}
	public void setResult(boolean result) {
		this.result = result;
	}
	public ReturnProductObject(List<ObjectError> errors, boolean result) {
		super();
		this.errors = errors;
		this.result = result;
	}
	public ReturnProductObject() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
