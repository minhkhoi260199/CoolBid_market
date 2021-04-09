package com.app.main.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping({"", "customer"})
public class CustomerController {
	
	@RequestMapping(value = {"", "index"} ,method = RequestMethod.GET)
	public String index() {
		return "customer/index";
	}
	
	@RequestMapping(value = {"profile"} ,method = RequestMethod.GET)
	public String index2() {
		return "customer/accountUpdate";
	}

}
