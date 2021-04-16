package com.app.main.models;

import java.util.List;

public class ReturnCustomProductAuction {
	private CustomerProduct customerProducts;
	private List<AuctionProduct> auctionProducts;
	private boolean status;
	private Integer totalRecord;
	public CustomerProduct getCustomerProducts() {
		return customerProducts;
	}
	public void setCustomerProducts(CustomerProduct customerProducts) {
		this.customerProducts = customerProducts;
	}
	public List<AuctionProduct> getAuctionProducts() {
		return auctionProducts;
	}
	public void setAuctionProducts(List<AuctionProduct> auctionProducts) {
		this.auctionProducts = auctionProducts;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	public Integer getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(Integer totalRecord) {
		this.totalRecord = totalRecord;
	}

	
	public ReturnCustomProductAuction(CustomerProduct customerProducts, List<AuctionProduct> auctionProducts,
			boolean status, Integer totalRecord) {
		super();
		this.customerProducts = customerProducts;
		this.auctionProducts = auctionProducts;
		this.status = status;
		this.totalRecord = totalRecord;
	}
	public ReturnCustomProductAuction() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
