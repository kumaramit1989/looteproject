package com.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.SupplierDAO;
import com.model.Category;
import com.model.Supplier;
@Controller
public class SupplierController
{

	@Autowired
	SupplierDAO supDAO;
	//view all supplier
	@RequestMapping(value = "/Supplierview", method = RequestMethod.GET)
	public ModelAndView  showSupplier() 
	{
//		int lid=supDAO.fetchlastid();
//		lid++;
		Supplier supobj=new Supplier();
		//supobj.setSupplierId(lid);
		ModelAndView mvc=new ModelAndView("ManageSupplier","Supplier",supobj);
		String Suppliergsonlist=supDAO.getSupplier();
		mvc.addObject("Supplierlist",Suppliergsonlist);
		mvc.addObject("check",true);
		
		return mvc;
	}
	//add supplier
	@RequestMapping(value = "/addSupplier", method = RequestMethod.POST)
	public ModelAndView addSupplier(Supplier supobj) 
	{
		ModelAndView mvc=new ModelAndView("ManageSupplier","Supplier",new Supplier());
		supDAO.SaveSupplier(supobj);
		String Suppliergsonlist=supDAO.getSupplier();
		mvc.addObject("Supplierlist",Suppliergsonlist);
		mvc.addObject("check",true);
		return mvc;
	}
	//delete supplier
	@RequestMapping(value = "/deletSupplier",method=RequestMethod.GET)
	public ModelAndView deletSupplier(@RequestParam("supid")int supid) 
	{
		
		ModelAndView mvc=new ModelAndView("ManageSupplier","Supplier",new Supplier());
		supDAO.deleteSupplier(supid);
		String Suppliergsonlist=supDAO.getSupplier();
		mvc.addObject("Supplierlist",Suppliergsonlist);
		mvc.addObject("check",true);
		return mvc;
	}
	//fetching record for updating
	@RequestMapping(value = "/fetchsuppliertoupdate",method=RequestMethod.GET)
	public ModelAndView fetchsuppliertoupdate(@RequestParam("supid")int supid) 
	{
		Supplier Supplierobj=supDAO.fetchtotoupdate(supid);
		ModelAndView mvc =new ModelAndView("ManageSupplier","Supplier",Supplierobj);
		String Suppliergsonlist=supDAO.getSupplier();
		mvc.addObject("Supplierlist",Suppliergsonlist);
		mvc.addObject("check",false);
		return mvc;
	
	}
	//updating supplier
	@RequestMapping(value = "/updateSupplier",method=RequestMethod.POST)
	public ModelAndView updateSupplier(Supplier Supplierobj) 
	{
		//System.out.println(Supplierobj.getSupplierId());
		//System.out.println(Supplierobj.getSupplierName());
		
		int supid=Supplierobj.getSupplierId();
		supDAO.updateSupplier(Supplierobj, supid);
		ModelAndView mvc=new ModelAndView("ManageSupplier","Supplier",new Supplier());
		String Suppliergsonlist=supDAO.getSupplier();
		mvc.addObject("Supplierlist",Suppliergsonlist);
		mvc.addObject("check",true);
		return mvc;
		
	}
	
	
}
