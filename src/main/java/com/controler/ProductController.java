package com.controler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.CategaoryDAO;
import com.DAO.ProductDAO;
import com.DAO.SupplierDAO;
import com.model.Product;


@Controller
public class ProductController 
{
	@Autowired
	ProductDAO prodDAO;
	@Autowired
	CategaoryDAO catDAO;
	@Autowired
	SupplierDAO supDAO;
	@RequestMapping(value = "/showProduct", method = RequestMethod.GET)
	public ModelAndView  showSupplier() 
	{
		//int lid=prodDAO.fetchlastid();
	//	lid++;
		Product proobj=new Product();
		//proobj.setSupplierId(lid);
		ModelAndView mvc=new ModelAndView("ManageProduct","Product",proobj);
		String Productgsonlist=prodDAO.getProduct();
		String catlist=catDAO.getCategory();
		String suplist=supDAO.getSupplier();
		mvc.addObject("Productlist",Productgsonlist);
		mvc.addObject("catlist",catlist);
		mvc.addObject("suplist",suplist);
		mvc.addObject("check",true);
		
		return mvc;
	}
}
