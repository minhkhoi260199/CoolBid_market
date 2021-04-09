package com.app.main.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping({"buyer"})
public class BuyerController {
	
	@RequestMapping(value = {"", "index"} ,method = RequestMethod.GET)
	public String index() {
		return "buyer/index";
	}
	
	@RequestMapping(value = {"invoices"} ,method = RequestMethod.GET)
	public String index2() {
		return "buyer/invoices";
	}
}
