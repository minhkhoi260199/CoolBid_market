package com.app.main.services;

import com.app.main.models.Product;

public interface ProductService {
	public Iterable<Product> findAllAvailableProduct();
	public Product save(Product product);
	
}
