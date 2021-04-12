package com.app.main.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.app.main.models.Category;

public interface CategoryRepository extends CrudRepository<Category, Integer> {

}
