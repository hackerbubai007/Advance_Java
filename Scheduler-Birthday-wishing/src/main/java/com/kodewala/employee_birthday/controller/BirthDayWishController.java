package com.kodewala.employee_birthday.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.kodewala.employee_birthday.bean.UserBean;
import com.kodewala.employee_birthday.service.UserService;

@RestController
public class BirthDayWishController {

	@Autowired
	private UserService userService;

	

	@PostMapping("/add")
	public String addUser(@RequestBody UserBean bean) {
		userService.addUser(bean);
		return "User added successfully";
	}


}
