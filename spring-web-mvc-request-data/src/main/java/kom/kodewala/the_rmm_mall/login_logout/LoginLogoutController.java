package kom.kodewala.the_rmm_mall.login_logout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginLogoutController {
	
	@RequestMapping("/login")
	public ModelAndView login() {
		
		System.out.println("Login Hitting................");
		
		ModelAndView modelAndView= new ModelAndView();
		
		modelAndView.setViewName("displayLoginPage");
		return modelAndView;
		
	}
	
	

	@RequestMapping("/validateLogin")
	public ModelAndView loginSuccess(@RequestParam("userName") String userName ,@RequestParam("password") String password) {
		
		System.out.println("Login Successfull Page Hitting................");
		
		ModelAndView modelAndView= new ModelAndView();
		
		System.out.println("User Name/ g-mail: " + userName);
		System.out.println("Password: " + password);
		
		modelAndView.setViewName("loginSuccessPage");
		return modelAndView;
		
	}

}
