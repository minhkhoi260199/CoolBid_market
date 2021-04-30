package com.app.main.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.app.main.models.Notify;

public interface NotifyRepository extends CrudRepository<Notify, Integer> {
	@Query("from Notify where user_id = :user_id and status = :status_id order by id DESC")
	public Iterable<Notify> getListNotify(@Param("user_id") int user_id, @Param("status_id") int status_id);
	
	@Query(nativeQuery = true, value = "select count(id) from notify where user_id = :user_id and status = :status_id")
	public int getTotalNotify(@Param("user_id") int user_id, @Param("status_id") int status_id);
}
