package com.app.main.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import com.app.main.helpers.UploadHelper;
import com.app.main.models.AmountTime;
import com.app.main.models.Category;
import com.app.main.models.Product;
import com.app.main.models.Users;
import com.app.main.services.AmountTimeService;
import com.app.main.services.CategoryService;
import com.app.main.services.ProductService;
import com.app.main.services.StatusService;
import com.app.main.services.UserService;

@Controller
@RequestMapping({"seller**"})
public class SellerController implements ServletContextAware {
	
	private ServletContext servletContext;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ProductService productService;
	@Autowired
	AmountTimeService amountTimeService;
	@Autowired
	StatusService statusService;
	
	@Autowired
	UserService userService;
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		// TODO Auto-generated method stub
		this.servletContext = servletContext;
		
	}
	
	@RequestMapping(value = {"", "index"} ,method = RequestMethod.GET)
	public String index() {
		return "seller/index";
	}
	
	@RequestMapping(value = {"invoices"} ,method = RequestMethod.GET)
	public String index2() {
		return "seller/invoices";
	}
	
	@RequestMapping(value = {"addProduct"} ,method = RequestMethod.GET)
	public String addProduct(ModelMap modelMap) {
		modelMap.put("product", new Product());
		return "seller/addProduct";
	}
	
	@RequestMapping(value = {"addProduct"} ,method = RequestMethod.POST)
	public String processAddProduct(@ModelAttribute("product") @Valid Product product, BindingResult bindingResult, Authentication authentication, ModelMap modelMap, @RequestParam("category") String categoryString, @RequestParam("amount_time_id") String amountTimeString, @RequestParam("file") MultipartFile file) {
		if (authentication.getName() != null) {
			if (!bindingResult.hasErrors()) {
				if (categoryString != "") {
					if (amountTimeString != "") {
						try {
							int categoryId = Integer.parseInt(categoryString);
							Category category = categoryService.findById(categoryId);
							product.setCategory(category);
							
							int amountTimeId = Integer.parseInt(amountTimeString);
							AmountTime amountTime = amountTimeService.findById(amountTimeId);
							product.setAmountTime(amountTime);
							
							String photo = UploadHelper.saveImage(servletContext, file);
							if (file.getOriginalFilename() != "") {
								product.setImage(file.getOriginalFilename());
							}
							Users user = userService.findUserByUsername(authentication.getName());
							product.setStatus(statusService.findById(1));
							product.setUsers(user);
							productService.save(product);
							return "redirect:/seller";
						} catch (Exception e) {

						}
					} else {
						bindingResult.rejectValue("amount_time_id", "NotEmpty");
					}
				} else {
					bindingResult.rejectValue("category", "NotEmpty");
				}
			}
		}
		modelMap.put("product", product);
		return "seller/addProduct";
	}

}
