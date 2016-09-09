package com.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.SupplierDAO;
import com.model.Category;
import com.model.Supplier;
@Controller
public class SupplierController
{

	@Autowired
	SupplierDAO supDAO;
	@RequestMapping(value = "/Supplierview", method = RequestMethod.GET)
	public ModelAndView  showcategaory() 
	{
		ModelAndView mvc=new ModelAndView("ManageSupplier","Supplier",new Category());
		
	    return mvc;	
	}
	
	@RequestMapping(value = "/addSupplier", method = RequestMethod.POST)
	public ModelAndView  showcategaory(Supplier supobj) 
	{
		ModelAndView mvc=new ModelAndView("ManageSupplier","Supplier",new Supplier());
		supDAO.SaveSupplier(supobj);
		String suplist=supDAO.getSupplier();
		mvc.addObject("clist",suplist);
		return mvc;
	}
}
