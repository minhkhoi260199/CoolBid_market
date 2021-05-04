package com.app.main.services;

import java.util.Optional;

import com.app.main.models.Category;

public interface CategoryService {
	public Iterable<Category> findAll();
	public Category findById(int id);
	public Iterable<Category> findAllWithLimit();
	public Category save(Category category);
	public void deleteCategory(int id);
}
