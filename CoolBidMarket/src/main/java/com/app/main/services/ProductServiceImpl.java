package com.app.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.main.models.Product;
import com.app.main.repositories.ProductRepository;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository productRepository;
	@Override
	public Iterable<Product> findAllAvailableProduct() {
		// TODO Auto-generated method stub
		return productRepository.findAllAvailableProduct();
	}
	
	public Product save(Product product) {
		return productRepository.save(product);
	}

	@Override
	public Iterable<Product> findAll() {
		// TODO Auto-generated method stub
		return productRepository.findAll();
	}
	
	

}
