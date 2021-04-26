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

import com.app.main.models.Category;
import com.app.main.models.CustomerProduct;
import com.app.main.models.ReturnTotalAndProduct;
import com.app.main.services.ProductService;

@RestController
@RequestMapping("api/customer")
public class CustomerRestController {
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="listAvailableProduct")
	public ResponseEntity<?> listAvailableProduct(@RequestParam("page") String pageString, @RequestParam("length") String lengthString, @RequestParam(value = "type", required = false) String typeString, @RequestParam(value = "keyword", required = false) String keyword, Authentication authentication){
		try {
			int page = Integer.parseInt(pageString);
			int length = Integer.parseInt(lengthString);
			int start = (length * page) - length;
			List<CustomerProduct> customerProducts = null;
			int totalAvailableProduct = 0;
			String keywordFormat = keyword == null ? "" : keyword;
			try {
				if (typeString != "") {
					int type = Integer.parseInt(typeString);
					System.out.println("Da vao day");
					customerProducts = (List<CustomerProduct>) productService.findAllWithLimit(start, length, type, keywordFormat);
					totalAvailableProduct = productService.countTotalAvailableProduct(type, keywordFormat);
				} else {
					customerProducts = (List<CustomerProduct>) productService.findAllWithLimit(start, length, 0, keywordFormat);
					totalAvailableProduct = productService.countTotalAvailableProduct(0, keywordFormat);
				}
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("12345");
				System.out.println(e.getMessage());
				customerProducts = (List<CustomerProduct>) productService.findAllWithLimit(start, length, 0, keywordFormat);
				totalAvailableProduct = productService.countTotalAvailableProduct(0, keywordFormat);
			}
			
			ReturnTotalAndProduct returnTotalAndProduct = new ReturnTotalAndProduct();
			returnTotalAndProduct.setCustomerProducts(customerProducts);
			returnTotalAndProduct.setTotalProducts(totalAvailableProduct);
			//System.out.println(totalAvailableProduct);
			return new ResponseEntity<>(returnTotalAndProduct, HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("1234");
			System.out.println(e.getMessage());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
}
