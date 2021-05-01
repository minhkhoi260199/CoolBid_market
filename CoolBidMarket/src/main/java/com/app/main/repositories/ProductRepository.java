package com.app.main.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.app.main.models.Product;

@Repository("productRepository")
public interface ProductRepository extends CrudRepository<Product, Integer> {
	@Query(nativeQuery = true, value = "SELECT * from product where status_id = 4 limit :start, :length")
	public List<Product> findAllAvailableProduct(@Param("start") int start, @Param("length") int length);
	
	@Query(nativeQuery = true, value = "SELECT * from product where status_id = 4 and start_time <= :dateTime")
	public List<Product> findAllAvailableProductByDate(@Param("dateTime") String dateTime);
	
	@Query(nativeQuery = true, value = "SELECT * from product where seller_id = :user")
	public List<Product> findProductByUserId(@Param("user") int id);
	
	@Query("SELECT count(id) from Product where status = 4")
	public Integer countTotalAvailableProduct();
	
	@Query("SELECT count(id) from Product where status = 4 and name like %:product_name%")
	public Integer countTotalAvailableProductWithKeyword(@Param("product_name") String product_name);
	
	@Query("SELECT count(id) from Product where status = 4 and category_id = :category_id")
	public Integer countTotalAvailableProductWithCategory(@Param("category_id") int category_id);
	
	@Query("SELECT count(id) from Product where status = 4 and category_id = :category_id and name like %:product_name%")
	public Integer countTotalAvailableProductWithCategoryAndKeyWord(@Param("category_id") int category_id, @Param("product_name") String product_name);
	
	@Query(nativeQuery = true, value = "SELECT * from product where status_id = 4 and category_id = :category_id limit :start, :length")
	public List<Product>findAllWithLimitAndSearchCategory(@Param("start") int start, @Param("length") int length, @Param("category_id") int category_id);

	
	@Query(nativeQuery = true, value = "SELECT * from product where status_id = 4 and category_id = :category_id and name like %:product_name% limit :start, :length")
	public List<Product>findAllWithLimitAndSearchCategoryAndKeyWord(@Param("start") int start, @Param("length") int length, @Param("category_id") int category_id, @Param("product_name") String product_name);
	
	@Query(nativeQuery = true, value = "SELECT * from product where status_id = 4 and name like %:product_name% limit :start, :length")
	public List<Product>findAllWithLimitAndSearchKeyWord(@Param("start") int start, @Param("length") int length,@Param("product_name") String product_name);
}
