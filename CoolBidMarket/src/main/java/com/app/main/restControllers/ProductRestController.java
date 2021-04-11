package com.app.main.restControllers;

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
import org.springframework.web.bind.annotation.RestController;

import com.app.main.models.Product;
import com.app.main.models.ReturnProductObject;
import com.app.main.models.Users;
import com.app.main.services.ProductService;
import com.app.main.services.UserService;

@RestController
@RequestMapping("api/product")
public class ProductRestController {
	
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	@RequestMapping(value="listProduct", method = RequestMethod.POST)
	public ResponseEntity<?> getListProduct(Authentication authentication, @RequestBody String typeString){
		try {
			int typeInt = Integer.parseInt(typeString);
			if (typeInt == 1) {
				if (authentication.getName() != null) {
					List<Product> products = (List<Product>) productService.findAllAvailableProduct();
					for(Product product : products) {
						System.out.println(product.getUsers().getName());
						System.out.println(product.getName());
					}
					System.out.println();
				}	
			}
			return new ResponseEntity<>(HttpStatus.OK);
		} catch(Exception e) {
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
}
