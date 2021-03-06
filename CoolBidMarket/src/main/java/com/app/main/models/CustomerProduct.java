package com.app.main.models;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

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
	private Integer amountTime;
	@JsonFormat(timezone = "GMT+07:00")
	private Date startTime;
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

	public Integer getAmountTime() {
		return amountTime;
	}
	public void setAmountTime(Integer amountTime) {
		this.amountTime = amountTime;
	}
	
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public CustomerProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CustomerProduct(Integer id, String categoryName, Integer status, String sellerName, String description,
			String image, Double startPrice, Double gap, String productName, Integer amountTime, Date startTime) {
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
		this.amountTime = amountTime;
		this.startTime = startTime;
	}
	
	
	
	
}
