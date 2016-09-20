package com.controler;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.h2.engine.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.CartDAO;
import com.DAO.ProductDAO;
import com.DAO.RegisterDAO;
import com.model.Product;
import com.model.resetpassword;
import com.model.userCredentia;
@Controller
public class LogingController 
{
	@Autowired
	ProductDAO prodDAO;
	@Autowired
	RegisterDAO regDAo;
	@Autowired 
	CartDAO cartDAO;
	@RequestMapping("/Login")
	public String showLogin(HttpSession session) 
	{
	return "Login";
	}
	@RequestMapping("/Adminpanelview")
	public String showadminlogin(HttpSession session,Model model) 
	{
		
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		String role="ROLE_USER";
		
		for (GrantedAuthority authority : authorities) 
		{
		  
		     if (authority.getAuthority().equals(role)) 
		     {
//		 		String Productgsonlist=prodDAO.getProduct();
//		 		model.addAttribute("Productlist",Productgsonlist);
		    	 String cartitems=cartDAO.getartitems();
		    	 session.setAttribute("UserLoggedIn",true);
		    	 session.setAttribute("user","Welcome "+username);
		    	 model.addAttribute("productdetails",cartitems);
		    	 page="OrderConfirmation";
		   
		     }
		     else 
		     {
		    	 session.setAttribute("user","Welcome "+username);
		    	 session.setAttribute("Administrator", "true");
		    	 page="AdminPanel";
			
		    }
		}
		return page;
	
	}
	
	@RequestMapping(value = "/perform_logout")
	public ModelAndView logoutPage(HttpServletRequest request, HttpServletResponse response)
	{
			HttpSession session=request.getSession();
			session.invalidate();
			session.setAttribute("check", true);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null)
		{
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
	
		return new ModelAndView("redirect:/");
	}
	@RequestMapping(value = "/resetpassword")
	public ModelAndView resetpassword(userCredentia user) 
	{
		ModelAndView mvc =new ModelAndView("ResetPassword","resetpassword",new resetpassword());
		return mvc;
	}
}
