package com.app.main.validators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.app.main.models.Users;
import com.app.main.services.UserService;

@Component("usersValidator")
public class UsersValidator implements Validator {

	@Autowired
	UserService userService;
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return clazz.equals(Users.class);
	}

	@Override
	public void validate(Object object, Errors errors) {
		// TODO Auto-generated method stub
		//them validate rieng
		Users user = (Users) object;
		Users oldUser = userService.findUserByUsername(user.getUsername());
		//kiem tra neu nhap username giong voi "abc" se bao loi
		if(oldUser != null) {
			errors.rejectValue("username", "users.username.exists");
		}
	}
	
	public void validateEdit(Errors errors, String roleString) {
		// TODO Auto-generated method stub
		//them validate rieng
		//kiem tra neu nhap username giong voi "abc" se bao loi
		if(roleString == "" || roleString.isEmpty()) {
			errors.rejectValue("role", "NotEmpty");
		}
	}

}
