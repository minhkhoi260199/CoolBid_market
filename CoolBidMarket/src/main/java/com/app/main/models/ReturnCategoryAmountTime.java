package com.app.main.models;

import java.util.List;

public class ReturnCategoryAmountTime {
	private List<CustomAmountTime> customAmountTimes;
	private List<CustomCategory> customCategories;
	public List<CustomAmountTime> getCustomAmountTimes() {
		return customAmountTimes;
	}
	public void setCustomAmountTimes(List<CustomAmountTime> customAmountTimes) {
		this.customAmountTimes = customAmountTimes;
	}
	public List<CustomCategory> getCustomCategories() {
		return customCategories;
	}
	public void setCustomCategories(List<CustomCategory> customCategories) {
		this.customCategories = customCategories;
	}
	public ReturnCategoryAmountTime(List<CustomAmountTime> customAmountTimes, List<CustomCategory> customCategories) {
		super();
		this.customAmountTimes = customAmountTimes;
		this.customCategories = customCategories;
	}
	public ReturnCategoryAmountTime() {
		super();
		// TODO Auto-generated constructor stub
	}
}
