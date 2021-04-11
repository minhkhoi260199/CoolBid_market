package com.app.main.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.app.main.models.Role;
import com.app.main.models.Users;

public interface RoleRepository extends CrudRepository<Role, Integer> {
	@Query("from Role where id = :id")
	public Role findById(@Param("id") int id);
	
	@Query("Select new com.app.main.models.RoleLimit(id, name)  from Role")
	public Iterable<Role> findAllLimited();
	
	@Query("from Role where id != 1")
	public Iterable<Role> findWithoutAdmin();
}
