package com.kodewala.bookmyshow.profile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.UUID;
import com.kodewala.bookmyshow.profile.bean.UserProfile;

@Controller
public class ProfileController {
	
	@RequestMapping("/showProfilePage")
	public ModelAndView showProfilePage() {
		
		System.out.println("profile page hitting server.........");
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("profile");
		return modelAndView;
		
	}
	
	@PostMapping("/createProfile") //  requestmapping + method type = post
	public String createUserProfile(@ModelAttribute UserProfile userProfile, Model model ) {
		
		System.out.println("First Name: " + userProfile.getFirstName());
		System.out.println("Last Name: " + userProfile.getLastName());
		System.out.println("Email Id: " + userProfile.getEmail());
		System.out.println("Mobile Number: " + userProfile.getMobile());
		System.out.println("Pincode : " + userProfile.getPincode());
		
		String name=userProfile.getFirstName();
		String mob=userProfile.getMobile();
		
		String userId = generateUniqueId(name, mob);
		
		model.addAttribute("userID", userId);
		
		System.out.println("Generated user id is:  " +userId);
		
		return "profile-success";
		
	}
	


	public static String generateUniqueId(String name, String mobile) {
	    String base = name + mobile + UUID.randomUUID();
	    return base.hashCode() < 0 ? "ID" + Math.abs(base.hashCode()) : "ID" + base.hashCode();
	}

	

}
