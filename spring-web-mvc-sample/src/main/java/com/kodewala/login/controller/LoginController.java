package com.kodewala.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public ModelAndView viewPage() {
		
		System.out.println("login controller...............");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("displayLogin");
		
		return modelAndView;
		
		
	}
	
}
