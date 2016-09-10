package com.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.CategaoryDAO;
import com.model.Category;
import com.model.Register;
import com.model.Supplier;
@Controller
public class CategoryController
{
	
	@Autowired
	CategaoryDAO catDAO;
	@RequestMapping(value = "/Category", method = RequestMethod.GET)
	public ModelAndView  showcategaory() 
	{
//		int lid=catDAO.fetchlastid();
//		lid++;
		Category catobj=new Category();
	//	catobj.setCategoryId(lid);;
		String catgsonlist=catDAO.getCategory();
		ModelAndView mvc=new ModelAndView("ManageCategory","Category",catobj);
		mvc.addObject("clist",catgsonlist);
		mvc.addObject("check",true);
	    return mvc;	
	}
	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public ModelAndView addcategaory(Category cat) 
	{
		ModelAndView mvc=new ModelAndView("ManageCategory","Category",new Category());
		catDAO.SaveCategory(cat);
		String catgsonlist=catDAO.getCategory();
		mvc.addObject("clist",catgsonlist);
		mvc.addObject("check",true);
		return mvc;
	}
	@RequestMapping(value = "/deletCategory",method=RequestMethod.GET)
	public ModelAndView deletCategory(@RequestParam("cid")int cid) 
	{
		
		ModelAndView mvc=new ModelAndView("ManageCategory","Category",new Category());
		catDAO.deleteCategory(cid);
		String catgsonlist=catDAO.getCategory();
		mvc.addObject("clist",catgsonlist);
			mvc.addObject("check",true);
		return mvc;
	}
	
	@RequestMapping(value = "/fetchCategorytoupdate",method=RequestMethod.GET)
	public ModelAndView fetchCategorytoupdate(@RequestParam("cid")int cid) 
	{
		Category Categoryobj=catDAO.fetchtotoupdate(cid);
		ModelAndView mvc =new ModelAndView("ManageCategory","Category",Categoryobj);
		String catgsonlist=catDAO.getCategory();
		mvc.addObject("clist",catgsonlist);
		mvc.addObject("check",false);
		return mvc;
	
	}
	@RequestMapping(value = "/updateCategory",method=RequestMethod.POST)
	public ModelAndView UpadteCategory(Category catobj) 
	{
		
		int cid=catobj.getCategoryId();
		catDAO.updateCategory(catobj, cid);
		ModelAndView mvc=new ModelAndView("ManageCategory","Category",new Category());
		String catgsonlist=catDAO.getCategory();
		mvc.addObject("clist",catgsonlist);
		mvc.addObject("check",true);
		return mvc;
	}
		
}
