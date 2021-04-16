package com.app.main.models;

import java.util.Date;

public class AuctionProduct {
	private int idAuction;
	private int idProduct;
	private Date auctionTime;
	private String fullName;
	private double price;
	public int getIdAuction() {
		return idAuction;
	}
	public void setIdAuction(int idAuction) {
		this.idAuction = idAuction;
	}
	public int getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}
	public Date getAuctionTime() {
		return auctionTime;
	}
	public void setAuctionTime(Date auctionTime) {
		this.auctionTime = auctionTime;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public AuctionProduct(int idAuction, int idProduct, Date auctionTime, String fullName, double price) {
		super();
		this.idAuction = idAuction;
		this.idProduct = idProduct;
		this.auctionTime = auctionTime;
		this.fullName = fullName;
		this.price = price;
	}
	public AuctionProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
