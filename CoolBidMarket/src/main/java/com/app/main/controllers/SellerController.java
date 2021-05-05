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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import com.app.main.helpers.UploadHelper;
import com.app.main.models.AmountTime;
import com.app.main.models.Auction;
import com.app.main.models.Category;
import com.app.main.models.Product;
import com.app.main.models.Users;
import com.app.main.services.AmountTimeService;
import com.app.main.services.AuctionService;
import com.app.main.services.CategoryService;
import com.app.main.services.ProductService;
import com.app.main.services.RoleService;
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
	AuctionService auctionService;
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		// TODO Auto-generated method stub
		this.servletContext = servletContext;
		
	}
	
	@RequestMapping(value = {"", "index"} ,method = RequestMethod.GET)
	public String index(ModelMap modelMap, Authentication authentication) {
		Users users = userService.findUserByUsername(authentication.getName());
		modelMap.put("users", users );
		modelMap.put("roles", roleService.findAll());
		modelMap.put("products", productService.findProductByUserID(users.getId()));
		return "seller/index";
	}
	
	@RequestMapping(value = {"invoices"} ,method = RequestMethod.GET)
	public String index2(ModelMap modelMap, Authentication authentication) {
		Users users = userService.findUserByUsername(authentication.getName());
		modelMap.put("users", users);
		modelMap.put("roles", roleService.findAll());
		List<Auction> auctionsWon = auctionService.getListAuctionWon();
		List<Auction> auctions = new ArrayList<Auction>();
		
		for (Auction auction : auctionsWon) {
			if ( auction.getProduct().getUsers().getId() == users.getId()) {
					System.out.println("auction buyer: " + auction.getUsers().getId());
					System.out.println(" Login user: " + users.getId());
					auctions.add(auction);
			}
		}
		
		modelMap.put("invoices", auctions);
		
		return "seller/invoices";
	}
	
	@RequestMapping(value = {"invoiceDetail/{id}"} ,method = RequestMethod.GET)
	public String invoiceDetail(@PathVariable("id") int id,ModelMap modelMap, Authentication authentication) {
		modelMap.put("users", userService.findUserByUsername(authentication.getName()));
		modelMap.put("roles", roleService.findAll());
		Auction auction = auctionService.getProductId(id);
		modelMap.put("auction", auction);
		return "seller/invoiceDetail";
	}
	
	@RequestMapping(value = {"addProduct"} ,method = RequestMethod.GET)
	public String addProduct(ModelMap modelMap, Authentication authentication) {
		modelMap.put("users", userService.findUserByUsername(authentication.getName()));
		modelMap.put("roles", roleService.findAll());
		modelMap.put("product", new Product());
		return "seller/addProduct";
	}
	
	@RequestMapping(value = {"addProduct"} ,method = RequestMethod.POST)
	public String processAddProduct(@ModelAttribute("product") @Valid Product product, BindingResult bindingResult, Authentication authentication, ModelMap modelMap, @RequestParam("category") String categoryString, @RequestParam("amount_time_id") String amountTimeString, @RequestParam("file") MultipartFile file) {
		modelMap.put("users", userService.findUserByUsername(authentication.getName()));
		modelMap.put("roles", roleService.findAll());
		if (authentication.getName() != null) {
			if (!bindingResult.hasErrors()) {
				if (categoryString != "") {
					if (amountTimeString != "") {
						try {
							System.out.println("Hello4");
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
							System.out.println("Hello1");
						}
					} else {
						bindingResult.rejectValue("amount_time_id", "NotEmpty");
						System.out.println("Hello");
					}
				} else {
					bindingResult.rejectValue("category", "NotEmpty");
					System.out.println("Hello2");
				}
			}
			System.out.println(bindingResult.hasErrors());
		}
		modelMap.put("product", product);
		return "seller/addProduct";
	}

}
