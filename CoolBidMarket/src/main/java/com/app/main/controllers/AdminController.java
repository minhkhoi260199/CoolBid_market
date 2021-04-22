package com.app.main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.main.services.CategoryService;
import com.app.main.services.InvoiceService;
import com.app.main.services.ProductService;
import com.app.main.services.UserService;

@Controller
@RequestMapping({"admin"})
public class AdminController {
	
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ProductService productService;
	@Autowired
	private InvoiceService invoiceService;
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = {"", "index"} ,method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("products", productService.findAll());
		System.out.println("product" + productService.findAll());
		return "admin/index";
	}
	
	@RequestMapping(value = {"invoice"} ,method = RequestMethod.GET)
	public String invoice(ModelMap modelMap) {
		modelMap.put("aa", "bbbbb");
		modelMap.put("invoices", invoiceService.findAll());
		System.out.println("aaa" + invoiceService.findAll());
		return "admin/invoice";
	}
	
	@RequestMapping(value = {"customer"} ,method = RequestMethod.GET)
	public String customer(ModelMap modelMap) {
		modelMap.put("users", userService.findAll());
		return "admin/customer";
	}
	
	@RequestMapping(value = {"category"} ,method = RequestMethod.GET)
	public String category(ModelMap modelMap) {
		modelMap.put("categories", categoryService.findAll());
		System.out.println("bbbb" + categoryService.findAll());
		return "admin/category";
	}
}
