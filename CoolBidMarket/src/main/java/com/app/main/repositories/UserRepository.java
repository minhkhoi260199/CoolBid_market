package com.app.main.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.app.main.models.Users;

@Repository("userRepository")
public interface UserRepository extends CrudRepository<Users, Integer> {

	@Query("from Users where username = :username")
	public Users findUserByUsername(@Param("username") String username);
	
	@Query("from Users where role_id != 0")
	public List<Users> findAll();
}
