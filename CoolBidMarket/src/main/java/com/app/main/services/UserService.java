package com.app.main.services;

import org.apache.catalina.User;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.app.main.models.Users;

public interface UserService extends UserDetailsService {
	public Users save(Users user);
	public Users findUserByUsername(String username);
	public Iterable<Users> findAll();
}
