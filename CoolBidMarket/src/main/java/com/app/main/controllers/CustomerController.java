package com.app.main.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.main.models.Category;
import com.app.main.services.CategoryService;

@Controller
@RequestMapping({"", "customer"})
public class CustomerController {
	
	@Autowired
	CategoryService categoryService;
	@RequestMapping(value = {"", "index"} ,method = RequestMethod.GET)
	public String index(ModelMap modelMap, @RequestParam(value = "type", required = false) String typeString) {
		List<Category> categories = (List<Category>) categoryService.findAllWithLimit();
		modelMap.put("categories", categories);
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
		
		return "customer/index";
	}
	
	@RequestMapping(value = {"profile"} ,method = RequestMethod.GET)
	public String index2() {
		return "customer/accountUpdate";
	}

}
