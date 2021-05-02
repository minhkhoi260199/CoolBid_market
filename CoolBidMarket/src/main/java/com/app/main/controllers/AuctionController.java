package com.app.main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.main.services.UserService;

@Controller
@RequestMapping({"auction"})
public class AuctionController {
	@Autowired
	UserService userService;
	@RequestMapping(value = {"", "index"} ,method = RequestMethod.GET)
	public String index(@RequestParam("id") String idString, ModelMap modelMap, Authentication authentication) {
		try {
			if(authentication!=null) {
				modelMap.put("users", userService.findUserByUsername(authentication.getName()));
			}
			modelMap.put("id", Integer.parseInt(idString));
			return "auction/index";
		} catch (Exception e) {
			return "redirect:/customer";
		}
		
	}
}
