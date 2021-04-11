package com.app.main.models;

import java.io.Serializable;

public class CustomerProduct implements Serializable {
	private Integer id;
	private String categoryName;
	private Integer status;
	private String sellerName;
	private String description;
	private String image;
	private Double startPrice;
	private Double gap;
	private String productName;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getSellerName() {
		return sellerName;
	}
	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Double getStartPrice() {
		return startPrice;
	}
	public void setStartPrice(Double startPrice) {
		this.startPrice = startPrice;
	}
	public Double getGap() {
		return gap;
	}
	public void setGap(Double gap) {
		this.gap = gap;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public CustomerProduct(Integer id, String categoryName, Integer status, String sellerName, String description,
			String image, Double startPrice, Double gap, String productName) {
		super();
		this.id = id;
		this.categoryName = categoryName;
		this.status = status;
		this.sellerName = sellerName;
		this.description = description;
		this.image = image;
		this.startPrice = startPrice;
		this.gap = gap;
		this.productName = productName;
	}
	public CustomerProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
