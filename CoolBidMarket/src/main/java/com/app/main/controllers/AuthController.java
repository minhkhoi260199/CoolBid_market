package com.app.main.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.main.models.Role;
import com.app.main.models.Users;
import com.app.main.services.RoleService;
import com.app.main.services.StatusService;
import com.app.main.services.UserService;
import com.app.main.validators.UsersValidator;

@Controller
@RequestMapping({"auth"})
public class AuthController {
	
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;
	@Autowired
	UsersValidator usersValidator;
	@Autowired
	StatusService statusService;
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(ModelMap modelMap) {
		modelMap.put("user", new Users());
		modelMap.put("roles", roleService.findWithoutAdmin());
		return "auth/register";
	}
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, ModelMap modelMap) {
		modelMap.put("user", new Users());
		if (error != null) {
			modelMap.put("msg", "Username/Password is wrong");
		}
		if (logout != null) {
			modelMap.put("msg", "Logout Successful");
		}
		return "auth/login";
	}
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String proccessRegister(@ModelAttribute("user") @Valid Users user, BindingResult bindingResult, @RequestParam("role") int role, ModelMap modelMap) {
		usersValidator.validate(user, bindingResult);
		if(!bindingResult.hasErrors()) {
			String password = user.getPassword().trim();
			String hash = new BCryptPasswordEncoder().encode(password);
			user.setPassword(hash);
			
			Role roleObject = roleService.findRoleById(role);
			user.setRole(roleObject);
			user.setStatus(statusService.findById(7));
			userService.save(user);
		}else {
			user.setPassword("");
			modelMap.put("user", user);
			modelMap.put("roles", roleService.findWithoutAdmin());
			return "auth/register";
		}
		return "redirect:/auth/login";
	}
	
}
