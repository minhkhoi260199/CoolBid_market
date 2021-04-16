package com.app.main.restControllers;

import java.util.ArrayList;
import java.util.List;

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
import com.app.main.models.Product;
import com.app.main.models.ReturnCategoryAmountTime;
import com.app.main.models.ReturnProductObject;
import com.app.main.models.Users;
import com.app.main.services.AmountTimeService;
import com.app.main.services.CategoryService;
import com.app.main.services.ProductService;
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
//	@RequestMapping(value="listProduct", method = RequestMethod.POST)
//	public ResponseEntity<?> getListProduct(Authentication authentication, @RequestParam("start") String startString, @RequestParam("length") String lengthString){
//		try {
//			int start = Integer.parseInt(startString);
//			int length = Integer.parseInt(lengthString);
//			List<CustomerProduct> productsReturn = null;
//			if (authentication.getName() != null) {
//				List<Product> products = (List<Product>) productService.findAllAvailableProduct();
//				for(Product product : products) {
//					CustomerProduct customerProduct = new CustomerProduct();
//					customerProduct.setProductName(product.getName());
//					customerProduct.setStatus(product.getStatus().getId());
//					customerProduct.setCategoryName(product.getCategory().getName());
//					customerProduct.setSellerName(product.getUsers().getName());
//					customerProduct.setImage(product.getImage());
//					customerProduct.setId(product.getId());
//					customerProduct.setDescription(product.getDescription());
//					customerProduct.setStartPrice(product.getStartPrice());
//					customerProduct.setGap(product.getGap());
//					customerProduct.setAmountTime(product.getAmountTime().getAmountTime());
//					productsReturn.add(customerProduct);
//				}
//				return new ResponseEntity<>(productsReturn, HttpStatus.OK);
//			}	
//			return new ResponseEntity<>(productsReturn, HttpStatus.OK);
//		} catch(Exception e) {
//			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
//		}
//	}
	
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
