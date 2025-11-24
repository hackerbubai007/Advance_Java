package com.kodewala.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@RequestMapping("/login")
	public ModelAndView login() {
		
		System.out.println("login hitting the server.........");
		
		ModelAndView modelAndView = new  ModelAndView();
		
		modelAndView.setViewName("loginDisplay");
		return modelAndView;
		
		
	}

}
