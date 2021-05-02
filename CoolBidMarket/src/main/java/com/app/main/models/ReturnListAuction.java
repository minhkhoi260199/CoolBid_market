package com.app.main.models;

import java.util.List;

public class ReturnListAuction {
	private boolean status;
	private List<AuctionProduct> auctionProducts;
	
	private int typeError;
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public List<AuctionProduct> getAuctionProducts() {
		return auctionProducts;
	}
	public void setAuctionProducts(List<AuctionProduct> auctionProducts) {
		this.auctionProducts = auctionProducts;
	}
	public ReturnListAuction() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getTypeError() {
		return typeError;
	}
	public void setTypeError(int typeError) {
		this.typeError = typeError;
	}
	public ReturnListAuction(boolean status, List<AuctionProduct> auctionProducts, int typeError) {
		super();
		this.status = status;
		this.auctionProducts = auctionProducts;
		this.typeError = typeError;
	}
	
}
