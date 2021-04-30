package com.app.main.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.main.models.Category;
import com.app.main.services.CategoryService;
import com.app.main.services.RoleService;
import com.app.main.services.UserService;

@Controller
@RequestMapping({"", "customer"})
public class CustomerController {
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;
	@Autowired
	CategoryService categoryService;
	@RequestMapping(value = {"", "index"} ,method = RequestMethod.GET)
	public String index(ModelMap modelMap, @RequestParam(value = "type", required = false) String typeString, Authentication authentication) {
		List<Category> categories = (List<Category>) categoryService.findAllWithLimit();
		modelMap.put("categories", categories);

		if(authentication!=null) {
			modelMap.put("users", userService.findUserByUsername(authentication.getName()));
		}
		modelMap.put("roles", roleService.findAll());

		try {
			if (typeString != null && typeString != "") {
				int type = Integer.parseInt(typeString);
				modelMap.put("type", type);
			} else {
				modelMap.put("type", "specialCase");
			}
		} catch (Exception e) {
			// TODO: handle exception
			modelMap.put("type", "specialCase");
		}
		
		if(authentication!=null) {
			return "customer/customerIndex";
		} else {
			return "customer/index";
		}
		
	}
	
	@RequestMapping(value = {"profile"} ,method = RequestMethod.GET)
	public String index2(ModelMap modelMap, Authentication authentication) {
		modelMap.put("users", userService.findUserByUsername(authentication.getName()));
		modelMap.put("roles", roleService.findAll());
		return "customer/accountUpdate";
	}

}
