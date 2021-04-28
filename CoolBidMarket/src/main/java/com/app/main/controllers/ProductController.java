package com.app.main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.main.services.RoleService;
import com.app.main.services.UserService;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(ModelMap modelMap,Authentication authentication) {
		modelMap.put("users", userService.findUserByUsername(authentication.getName()));
		modelMap.put("roles", roleService.findAll());
		return "product/index";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String create(ModelMap modelMap,Authentication authentication) {
		modelMap.put("users", userService.findUserByUsername(authentication.getName()));
		modelMap.put("roles", roleService.findAll());
		return "product/create";
	}
}
