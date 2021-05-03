package com.app.main.restControllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.app.main.models.AmountTime;
import com.app.main.models.Category;
import com.app.main.models.CustomAmountTime;
import com.app.main.models.CustomCategory;
import com.app.main.models.CustomerProduct;
import com.app.main.models.Notify;
import com.app.main.models.Product;
import com.app.main.models.ReturnCategoryAmountTime;
import com.app.main.models.ReturnProductObject;
import com.app.main.models.Users;
import com.app.main.services.AmountTimeService;
import com.app.main.services.CategoryService;
import com.app.main.services.NotifyService;
import com.app.main.services.ProductService;
import com.app.main.services.StatusService;
import com.app.main.services.UserService;

@RestController
@RequestMapping("api/product")
public class ProductRestController {
	
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	AmountTimeService amountTimeService;
	@Autowired 
	StatusService statusService;
	@Autowired
	NotifyService notifyService;
	
	@RequestMapping(value="approve", method = RequestMethod.POST)
	public ResponseEntity<?> approveProduct(Authentication authentication, @RequestParam("product_id") String product_id_string){
		try {
			TimeZone.setDefault(TimeZone.getTimeZone("GMT+7:00"));
			Date current = new Date();
			int product_id = Integer.parseInt(product_id_string);
			Product product = productService.findById(product_id);
			product.setStatus(statusService.findById(4));
			product.setStartTime(current);
			productService.save(product);
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			String content = "Your product has been approved at " + simpleDateFormat.format(current);
			Notify notify = new Notify();
			notify.setContent(content);
			notify.setUsers(userService.findUserById(product.getUsers().getId()));
			notify.setStatus(statusService.findById(10));
			notifyService.save(notify);
			
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="reject", method = RequestMethod.POST)
	public ResponseEntity<?> rejectProduct(Authentication authentication, @RequestParam("product_id") String product_id_string){
		try {
			int product_id = Integer.parseInt(product_id_string);
			Product product = productService.findById(product_id);
			product.setStatus(statusService.findById(2));
			productService.save(product);
			
			TimeZone.setDefault(TimeZone.getTimeZone("GMT+7:00"));
			Date current = new Date();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			String content = "Your product has been rejected at " + simpleDateFormat.format(current);
			Notify notify = new Notify();
			notify.setContent(content);
			notify.setUsers(userService.findUserById(product.getUsers().getId()));
			notify.setStatus(statusService.findById(10));
			notifyService.save(notify);
			
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="create", method = RequestMethod.POST)
	public ResponseEntity<?> createProduct(@Valid @RequestBody Product product, BindingResult bindingResult, Authentication authentication){
		try {
			ReturnProductObject returnProductObject = new ReturnProductObject();
			System.out.println(product.getName());
			if (bindingResult.hasErrors()) {
				returnProductObject.setErrors(bindingResult.getAllErrors());
				returnProductObject.setResult(false);
			} else {
				if (authentication.getName() != null) {
					Users user = userService.findUserByUsername(authentication.getName());
					product.setUsers(user);
					productService.save(product);
					returnProductObject.setResult(true);
				} else {
					returnProductObject.setResult(false);
				}
			}
			return new ResponseEntity<>(returnProductObject, HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="createCategory", method = RequestMethod.POST)
	public ResponseEntity<?> createCategory(@Valid @RequestBody Category category, Authentication authentication){
		try {
			
			categoryService.save(category);
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="deleteCategory", method = RequestMethod.POST)
	public ResponseEntity<?> dalete(Authentication authentication, @RequestParam("id") String cat_id){
		try {
			int id = Integer.parseInt(cat_id);
			if (productService.countProductByCategory(id) == 0) {
				categoryService.deleteCategory(id);
			}
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "getDataList", method=RequestMethod.GET)
	public ResponseEntity<?> getDataList(Authentication authentication){
		try {
			List<CustomCategory> customCategories = null;
			List<CustomAmountTime> customAmountTimes = null;
			System.out.println(authentication.getName());
			if (authentication.getName() != null) {
				List<Category> categories = (List<Category>) categoryService.findAll();
				List<AmountTime> amountTimes = (List<AmountTime>) amountTimeService.findAll();
				if (categories != null) {
					customCategories = new ArrayList<CustomCategory>();
					for (Category category : categories) {
						CustomCategory customCategory = new CustomCategory();
						customCategory.setId(category.getId());
						customCategory.setName(category.getName());
						customCategories.add(customCategory);
					}
				}
				if (amountTimes != null) {
					customAmountTimes = new ArrayList<CustomAmountTime>();
					for (AmountTime amountTime : amountTimes) {
						CustomAmountTime customAmountTime = new CustomAmountTime();
						customAmountTime.setId(amountTime.getId());
						customAmountTime.setAmountTimeName(amountTime.getAmountTime());
						customAmountTimes.add(customAmountTime);
					}
				}
			}
			ReturnCategoryAmountTime returnCategoryAmountTime = new ReturnCategoryAmountTime();
			returnCategoryAmountTime.setCustomAmountTimes(customAmountTimes);
			returnCategoryAmountTime.setCustomCategories(customCategories);
			return new ResponseEntity<>(returnCategoryAmountTime, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
}
