package com.app.main.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.app.main.models.Users;
import com.app.main.repositories.UserRepository;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		Users user = userRepository.findUserByUsername(username);
		if (user == null) {
			throw new UsernameNotFoundException("Username Not FoundException");
		} else {
			List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			if (user.getStatus().getId() == 7) {
				System.out.println(user.getRole().getName());
				authorities.add(new SimpleGrantedAuthority(user.getRole().getName()));
			}
			return new User(user.getUsername(), user.getPassword(), authorities);
		}
	}

	@Override
	public Users save(Users user) {
		// TODO Auto-generated method stub
		return  userRepository.save(user);
	}

	@Override
	public Users findUserByUsername(String username) {
		// TODO Auto-generated method stub
		return userRepository.findUserByUsername(username);
	}

}
