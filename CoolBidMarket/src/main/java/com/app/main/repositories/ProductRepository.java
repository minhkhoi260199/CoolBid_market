package com.app.main.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.app.main.models.Product;

@Repository("productRepository")
public interface ProductRepository extends CrudRepository<Product, Integer> {
	@Query("from Product where status = 4")
	public List<Product> findAllAvailableProduct();
}
