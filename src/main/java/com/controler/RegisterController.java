package com.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.RegisterDAO;
import com.model.Register;
import com.model.userCredentia;
import com.model.resetpassword;

@Controller

public class RegisterController 
{
	@Autowired
	RegisterDAO regDAO;
	@RequestMapping(value="/userRegistrationview",method = RequestMethod.GET)
	public ModelAndView  userRegistrationview()
	{
		ModelAndView mvc=new ModelAndView("Registration","Register",new Register());
		return mvc;
	}
	@RequestMapping(value="/userRegistration",method = RequestMethod.POST)
	public ModelAndView  userRegistration(Register regobj)
	{
		ModelAndView mvc=new ModelAndView("Login","Register",new Register());
		userCredentia credencial =new userCredentia();
		credencial.setUserName(regobj.getUserName());
		credencial.setPassword(regobj.getPassword());
		credencial.setEnabled(true);
		credencial.setRole("ROLE_USER");
		regDAO.addCredencial(credencial);
		regDAO.registerUser(regobj);
		mvc.addObject("msg","Registered Successfully");
		return mvc;
	}
	
	@RequestMapping(value="/changepassword",method = RequestMethod.POST)
	public ModelAndView resetpassword(resetpassword resetpassobj)
	{
		regDAO.updatepassword(resetpassobj);
		ModelAndView mvc=new ModelAndView("Login","resetpassword",new resetpassword());
		return mvc;
	}
	
}
