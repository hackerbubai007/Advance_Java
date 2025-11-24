package com.kodewala.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public ModelAndView login() {
		System.out.println("Server hitting........");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("myDisplay");
		return modelAndView;
	}
	
}
