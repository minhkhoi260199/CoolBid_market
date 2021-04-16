package com.app.main.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.app.main.models.Product;

@Repository("productRepository")
public interface ProductRepository extends CrudRepository<Product, Integer> {
	@Query(nativeQuery = true, value = "SELECT * from Product where status_id = 4 limit :start, :length")
	public List<Product> findAllAvailableProduct(@Param("start") int start, @Param("length") int length);
}
