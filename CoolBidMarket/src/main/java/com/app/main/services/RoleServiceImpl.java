package com.app.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.main.models.Role;
import com.app.main.repositories.RoleRepository;

@Service("roleService")
public class RoleServiceImpl implements RoleService {
	@Autowired
	RoleRepository roleRepository;

	@Override
	public Role findRoleById(int id) {
		return roleRepository.findById(id);
	}
	
	@Override
	public Iterable<Role> findAll() {
		return roleRepository.findAll();
	}

	@Override
	public Iterable<Role> findAllLimited() {
		// TODO Auto-generated method stub
		return roleRepository.findAllLimited();
	}

	@Override
	public Iterable<Role> findWithoutAdmin() {
		// TODO Auto-generated method stub
		return roleRepository.findWithoutAdmin();
	}
}
