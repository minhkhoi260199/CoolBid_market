package com.app.main.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping({"seller"})
public class SellerController {
	
	@RequestMapping(value = {"", "index"} ,method = RequestMethod.GET)
	public String index() {
		return "seller/index";
	}
	
	@RequestMapping(value = {"invoices"} ,method = RequestMethod.GET)
	public String index2() {
		return "seller/invoices";
	}
	
	@RequestMapping(value = {"addProduct"} ,method = RequestMethod.GET)
	public String index3() {
		return "seller/addProduct";
	}

}
