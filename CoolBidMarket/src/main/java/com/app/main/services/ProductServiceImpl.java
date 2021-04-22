package com.app.main.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.main.models.CustomerProduct;
import com.app.main.models.Product;
import com.app.main.repositories.ProductRepository;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository productRepository;
	@Override
	public List<CustomerProduct> findAllAvailableProduct(int start, int length) {
		List<CustomerProduct> customerProducts = new ArrayList<CustomerProduct>();
		// TODO Auto-generated method stub
		List<Product> products = productRepository.findAllAvailableProduct(start, length);
		if (products != null) {
			for(Product product : products) {
				CustomerProduct customerProduct = new CustomerProduct();
				customerProduct.setId(product.getId());
				customerProduct.setImage(product.getImage());
				customerProduct.setProductName(product.getName());
				customerProduct.setCategoryName(product.getCategory().getName());
				customerProduct.setSellerName(product.getUsers().getName());
				customerProduct.setStartPrice(product.getStartPrice());
				customerProduct.setGap(product.getGap());
				customerProduct.setStatus(product.getStatus().getId());
				customerProduct.setDescription(product.getDescription());
				customerProduct.setAmountTime(product.getAmountTime().getAmountTime());
				customerProducts.add(customerProduct);
			}
		} else {
			customerProducts = null;
		}
		return customerProducts;
	}
	
	public Product save(Product product) {
		return productRepository.save(product);
	}

	@Override
	public CustomerProduct findDetailById(int id) {
		// TODO Auto-generated method stub
		Product product = productRepository.findById(id).get();
		if (product != null) {
			CustomerProduct customerProduct = new CustomerProduct();
			customerProduct.setId(product.getId());
			customerProduct.setImage(product.getImage());
			customerProduct.setProductName(product.getName());
			customerProduct.setCategoryName(product.getCategory().getName());
			customerProduct.setSellerName(product.getUsers().getName());
			customerProduct.setStartPrice(product.getStartPrice());
			customerProduct.setGap(product.getGap());
			customerProduct.setStatus(product.getStatus().getId());
			customerProduct.setDescription(product.getDescription());
			customerProduct.setAmountTime(product.getAmountTime().getAmountTime());
//			System.out.println(product.getStartTime());
			customerProduct.setStartTime(product.getStartTime());
			return customerProduct;
		}
		return null;
	}

	@Override
	public Product findById(int id) {
		// TODO Auto-generated method stub
		return productRepository.findById(id).get();
	}

	@Override
	public List<Product> findAllAvailableProductByDate(String dateTime) {
		// TODO Auto-generated method stub
		return productRepository.findAllAvailableProductByDate(dateTime);
	}

	@Override
	public Iterable<Product> findAll() {
		// TODO Auto-generated method stub
		return productRepository.findAll();
	}	
	

}
