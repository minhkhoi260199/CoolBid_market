package com.app.main.services;

import com.app.main.models.Role;

public interface RoleService {
	public Role findRoleById(int id);
	public Iterable<Role> findAll();
	public Iterable<Role> findAllLimited();
	public Iterable<Role> findWithoutAdmin();
}
