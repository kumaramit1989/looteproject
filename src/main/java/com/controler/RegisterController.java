package com.controler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Register;
@Controller
public class RegisterController 
{
	@RequestMapping(value = "/Registration", method = RequestMethod.GET)
	public String  showRegistraion(@ModelAttribute("registration")Register register) 
	{
	return "Registration";	
	}
	
}
