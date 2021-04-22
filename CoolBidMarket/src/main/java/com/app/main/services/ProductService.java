package com.app.main.services;

import java.util.List;

import com.app.main.models.CustomerProduct;
import com.app.main.models.Product;

public interface ProductService {
	public List<CustomerProduct> findAllAvailableProduct(int start, int length);
	
	public Iterable<Product> findAll();
	public Product save(Product product);
	
	public CustomerProduct findDetailById(int id);
	
	public Product findById(int id);
	
	public List<Product> findAllAvailableProductByDate(String dateTime);
	
	
}
