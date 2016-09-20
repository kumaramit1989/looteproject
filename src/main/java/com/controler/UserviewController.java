package com.controler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.CartDAO;
import com.DAO.ProductDAO;
import com.model.Cart;
import com.model.Product;
import com.model.Register;


@Controller
public class UserviewController 
{
	@Autowired
	ProductDAO prodDAO;
	@Autowired 
	CartDAO cartDAO;
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
	
	@RequestMapping(value = "/recenttenproducts",method=RequestMethod.GET)
	public ModelAndView recenttenproducts(HttpSession session) 
	{
		String proddata=prodDAO.fetchrecentprojects();
		session.setAttribute("count",cartDAO.countitems());
		ModelAndView mvc =new ModelAndView("Recenttenproducts","Product",new Product());
		mvc.addObject("tenproducts",proddata);
		return mvc;
	
	}
	@RequestMapping(value = "/productscatwise",method=RequestMethod.GET)
	public ModelAndView productscategorywise(@RequestParam("catidid")int catidid,HttpSession session) 
	{
		String proddata=prodDAO.productscategorywise(catidid);
		session.setAttribute("count",cartDAO.countitems());
		ModelAndView mvc =new ModelAndView("Recenttenproducts","Product",new Product());
		mvc.addObject("tenproducts",proddata);
		return mvc;
	
	}
	
	
	 
}
