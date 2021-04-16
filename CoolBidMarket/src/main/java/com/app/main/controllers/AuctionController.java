package com.app.main.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping({"auction"})
public class AuctionController {
	
	@RequestMapping(value = {"", "index"} ,method = RequestMethod.GET)
	public String index(@RequestParam("id") String idString, ModelMap modelMap) {
		try {
			modelMap.put("id", Integer.parseInt(idString));
			return "auction/index";
		} catch (Exception e) {
			return "redirect:/customer";
		}
		
	}
}
