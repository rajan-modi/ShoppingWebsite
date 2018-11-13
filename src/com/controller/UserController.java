package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.User;
import com.service.UserService;
import com.service.UserServiceImpl;

@Controller
public class UserController {
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	public UserServiceImpl getUserServiceImpl() {
		return userServiceImpl;
	}

	public void setUserServiceImpl(UserServiceImpl userServiceImpl) {
		this.userServiceImpl = userServiceImpl;
	}

	@ModelAttribute(value="user")
	private User construct() {
		return new User();
	}
	
	@RequestMapping(value="/registration", method=RequestMethod.GET)
	public String registerForm() {
		return "registration";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registerUser(@ModelAttribute("user") User user) {
		System.out.println("Registration");
		userServiceImpl.saveUser(user);
		System.out.println("User inserted successfully");
		System.out.println(user.getUserName());
		return "registration";
	}
}
