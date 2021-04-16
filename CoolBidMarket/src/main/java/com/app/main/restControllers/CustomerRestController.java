package com.app.main.restControllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.app.main.models.CustomerProduct;
import com.app.main.services.ProductService;

@RestController
@RequestMapping("api/customer")
public class CustomerRestController {
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="listAvailableProduct")
	public ResponseEntity<?> listAvailableProduct(@RequestParam("start") String startString, @RequestParam("length") String lengthString ,Authentication authentication){
		try {
			int start = Integer.parseInt(startString);
			int length = Integer.parseInt(lengthString);
			List<CustomerProduct> customerProducts = productService.findAllAvailableProduct(start, length);
			return new ResponseEntity<>(customerProducts, HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
}
