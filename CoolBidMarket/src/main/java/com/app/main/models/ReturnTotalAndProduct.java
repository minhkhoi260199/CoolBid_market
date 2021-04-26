package com.app.main.models;

import java.util.List;

public class ReturnTotalAndProduct {
	private List<CustomerProduct> customerProducts;
	private int totalProducts;
	public List<CustomerProduct> getCustomerProducts() {
		return customerProducts;
	}
	public void setCustomerProducts(List<CustomerProduct> customerProducts) {
		this.customerProducts = customerProducts;
	}
	public int getTotalProducts() {
		return totalProducts;
	}
	public void setTotalProducts(int totalProducts) {
		this.totalProducts = totalProducts;
	}
	public ReturnTotalAndProduct(List<CustomerProduct> customerProducts, int totalProducts) {
		super();
		this.customerProducts = customerProducts;
		this.totalProducts = totalProducts;
	}
	public ReturnTotalAndProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
