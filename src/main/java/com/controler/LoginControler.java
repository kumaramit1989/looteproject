package com.controler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Login;
import com.model.Register;

@Controller
public class LoginControler
{
	
		@RequestMapping("/AboutUs")
		public String showAboutUs() 
		{
		return "AboutUs";
		}
		@RequestMapping("/ContactUs")
		public String showContactUs() 
		{
		return "ContactUs";
		}
		@RequestMapping("/Login")
		public String showLogin() 
		{
		return "Login";
		}
		@RequestMapping(value = "/ResetPassword", method = RequestMethod.GET)
		public String  showRegistraion(@ModelAttribute("resetpassword")Login login) 
		{
		return "ResetPassword";	
		}
		@RequestMapping("/AdminLogin")
		public String showadminlogin() 
		{
		return "AdminLogin";
		}
				
		
}



