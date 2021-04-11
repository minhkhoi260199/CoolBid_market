package com.app.main.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("product")
public class ProductController {
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index() {
		return "product/index";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String create() {
		return "product/create";
	}
}
