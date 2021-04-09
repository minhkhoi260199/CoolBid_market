package com.app.main.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping({"auth"})
public class AuthController {
	
	@RequestMapping(value = {"", "login"} ,method = RequestMethod.GET)
	public String index() {
		return "auth/login";
	}
	
	@RequestMapping(value = {"register"} ,method = RequestMethod.GET)
	public String index2() {
		return "auth/register";
	}
	
}
