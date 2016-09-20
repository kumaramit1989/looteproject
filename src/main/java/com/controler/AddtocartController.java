package com.controler;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.h2.engine.Session;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.CartDAO;
import com.DAO.ProductDAO;
import com.google.gson.Gson;
import com.model.Cart;
import com.model.Category;
import com.model.Product;

@Controller
public class AddtocartController
{
	@Autowired
	ProductDAO prodDAO;
	@Autowired 
	CartDAO cartDAO;
	@RequestMapping(value = "/addtocart",method=RequestMethod.GET)
	public ModelAndView addproducttocart(@RequestParam("prodid")int prodid,HttpSession session) 
	{
		
		String	sid=session.getId().substring(25);
		String cart=cartDAO.selectProduct(prodid,sid);
		session.setAttribute("count",cartDAO.countitems());
		String proddata=prodDAO.getProduct();
		ModelAndView mvc =new ModelAndView("AllProducts","Product",new Product());
		mvc.addObject("Productlist",proddata);
		return mvc;
	
	}
	@RequestMapping(value = "/showcart",method=RequestMethod.GET)
	public ModelAndView showcartitems(HttpSession session)
	{
		  
		String cartitems=cartDAO.getartitems();
		ModelAndView mvc =new ModelAndView("CartItems","Cart",new Cart());
		mvc.addObject("productdetails", cartitems);
		session.setAttribute("count",cartDAO.countitems());
		session.setAttribute("grandtotal",cartDAO.grandtotal());
		return mvc;
	}
	@RequestMapping(value = "/deletefromcart",method=RequestMethod.GET)
	public ModelAndView deletefromcart(@RequestParam("cartid")int cartid,HttpSession session)
	{
		String cartitems=cartDAO.deletecartitem(cartid);
		ModelAndView mvc =new ModelAndView("CartItems","Cart",new Cart());
		mvc.addObject("productdetails",cartitems);
		session.setAttribute("count",cartDAO.countitems());
		session.setAttribute("grandtotal",cartDAO.grandtotal());
		return mvc;
	}
	@RequestMapping(value = "/fetchtoupdate",method=RequestMethod.GET)
	public ModelAndView fetchtoupdate(@RequestParam("cartid")int cartid,HttpSession session) 
	{
		System.out.println(cartid);
	  Cart cartitem=cartDAO.fetchtotoupdate(cartid);
		ModelAndView mvc =new ModelAndView("CartItems","Cart",cartitem);
		Gson gson = new Gson();
		String jsoncartlist = gson.toJson(cartitem);
		mvc.addObject("check",true);
		mvc.addObject("productdetails",jsoncartlist);
		  session.setAttribute("count",cartDAO.countitems());
		return mvc;	
		
	}
	@RequestMapping(value = "/update",method=RequestMethod.POST)
	public ModelAndView cartupdate(Cart cartitems,HttpSession session) 
	{
		System.out.println("welcome to update");
		String	sid=session.getId().substring(25);
		cartDAO.updatecart(cartitems, cartitems.getCartId());
		ModelAndView mvc =new ModelAndView("CartItems","Cart",new Cart());
		String cartdata=cartDAO.getartitems();
		mvc.addObject("productdetails",cartdata);
		session.setAttribute("count",cartDAO.countitems());
		session.setAttribute("grandtotal",cartDAO.grandtotal());
		mvc.addObject("check",false);
		return mvc;
		
	}
	@RequestMapping(value = "/showbillingdetails",method=RequestMethod.GET)
	public ModelAndView showbillingdetails(HttpSession session)
	{
		  
		String cartitems=cartDAO.getartitems();
		ModelAndView mvc =new ModelAndView("OrderConfirmation","Cart",new Cart());
		mvc.addObject("productdetails",cartitems);
		session.setAttribute("grandtotal",cartDAO.grandtotal());
		return mvc;
	}
	@RequestMapping(value = "/addtoorderdetails",method=RequestMethod.GET)
	public ModelAndView  procedtopay() 
	{
		ModelAndView mvc =new ModelAndView("Orderprocessing","Cart",new Cart());
		return mvc;
	}
}

