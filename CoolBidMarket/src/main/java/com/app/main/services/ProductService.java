package com.app.main.services;

import java.util.List;

import org.springframework.data.repository.query.Param;

import com.app.main.models.CustomerProduct;
import com.app.main.models.Product;

public interface ProductService {
	public List<CustomerProduct> findAllAvailableProduct(int start, int length);
	
	public Iterable<Product> findAll();
	public Product save(Product product);
	
	public CustomerProduct findDetailById(int id);
	
	public Product findById(int id);
	
	public List<Product> findAllAvailableProductByDate(String dateTime);
	
	public Integer countTotalAvailableProduct(int category_id, String product_name);
	
	public List<CustomerProduct>findAllWithLimitAndSearchCategory(int start, int length, int category_id);
	
	public List<CustomerProduct> findAllWithLimit(int start, int length, int category_id, String product_name);
	
	
}
