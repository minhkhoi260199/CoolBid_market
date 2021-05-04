package com.app.main.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.app.main.models.Category;

public interface CategoryRepository extends CrudRepository<Category, Integer> {
	@Query(nativeQuery = true, value = "select * from category limit 0,6")
	public List<Category> findAllWithLimit();
	@Query(nativeQuery = true, value = "delete from category where id = ':id'")
	public int delete(@Param("id") int id);
}
