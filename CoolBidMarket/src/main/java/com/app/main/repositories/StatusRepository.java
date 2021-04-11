package com.app.main.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.app.main.models.Status;

public interface StatusRepository extends CrudRepository<Status, Integer> {
	@Query("from Status where id = :id")
	public Status findById(@Param("id") int id);
}
