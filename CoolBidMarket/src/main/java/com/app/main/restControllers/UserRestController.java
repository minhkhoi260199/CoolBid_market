package com.app.main.restControllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.app.main.validators.UsersValidator;
import com.app.main.models.ReturnUserObject;
import com.app.main.models.Role;
import com.app.main.models.Users;
import com.app.main.services.RoleService;
import com.app.main.services.StatusService;
import com.app.main.services.UserService;

@RestController
@RequestMapping("api/user")
public class UserRestController {
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;
	@Autowired
	UsersValidator usersValidator;
	@Autowired
	StatusService statusService;
	@RequestMapping(value = "register", method =  RequestMethod.POST)
	public ResponseEntity<?> register(@Valid @RequestBody Users user, BindingResult bindingResult, @RequestParam("role") String roleString) {
		ReturnUserObject returnUserObject = null;
		try {
			usersValidator.validateEdit(bindingResult, roleString);
			returnUserObject = new ReturnUserObject();
			System.out.println(bindingResult.getFieldError());
			returnUserObject.setErrors(bindingResult.getAllErrors());
//			System.out.println(role);
			returnUserObject.setResult(false);
			returnUserObject.setUsername("");
			if (!bindingResult.hasErrors()) {
				String hash = new BCryptPasswordEncoder().encode(user.getPassword().trim());
				user.setPassword(hash);
				int roleId = Integer.parseInt(roleString);
				Role role = roleService.findRoleById(roleId);
				user.setRole(role);
				user.setStatus(statusService.findById(7));
				userService.save(user);
				returnUserObject.setUsername(user.getUsername());
				returnUserObject.setResult(true);
			}
			return new ResponseEntity<>(returnUserObject, HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<>(returnUserObject, HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "getRoleList", method = RequestMethod.GET)
	public ResponseEntity<List<Role>> getRoleList(){
		List<Role> roles = null;
		try {
			roles = (List<Role>) roleService.findAllLimited();
			return new ResponseEntity<List<Role>>(roles, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(roles, HttpStatus.BAD_REQUEST);
		}
	}
}
