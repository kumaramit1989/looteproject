package com.controler;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.DAO.CartDAO;
import com.DAO.CategaoryDAO;
import com.DAO.ProductDAO;
import com.DAO.SupplierDAO;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;
@Controller
public class ProductController 
{
	@Autowired
	ProductDAO prodDAO;
	@Autowired
	CategaoryDAO catDAO;
	@Autowired
	SupplierDAO supDAO;
	@Autowired 
	CartDAO cartDAO;
	@RequestMapping(value = "/showProduct", method = RequestMethod.GET)
	public ModelAndView  showProduct(HttpSession session) 
	{
		int lid=prodDAO.fetchlastid();
		lid++;
		Product proobj=new Product();
	//	proobj.setSupplierId(lid);
		ModelAndView mvc=new ModelAndView("ManageProduct","Product",proobj);
		String Productgsonlist=prodDAO.getProduct();
		String catlist=catDAO.getCategory();
		String suplist=supDAO.getSupplier();
		session.setAttribute("count",cartDAO.countitems());
		mvc.addObject("Productlist",Productgsonlist);
		mvc.addObject("catlist",catlist);
		mvc.addObject("suplist",suplist);
		mvc.addObject("check",true);
		
		return mvc;
	}
	
	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	public ModelAndView addproduct(Product prodobj) 
	{
		
		ModelAndView mvc=new ModelAndView("ManageProduct","Product",new Product());
		prodDAO.SaveProduct(prodobj);
		String path="D:\\Finalprojectworkspace\\lootleproject\\src\\main\\webapp\\resources\\productimage\\";
		path=path+String.valueOf(prodobj.getProductId())+".jpg";
		File f=new File(path);
		MultipartFile filedet=prodobj.getProdImage();
		
		if(!filedet.isEmpty())
		{
			try
			{
			  byte[] bytes=filedet.getBytes();
			  FileOutputStream fos=new FileOutputStream(f);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else
		{
			System.out.println("File is Empty not Uploaded");
			
		}
		String Productgsonlist=prodDAO.getProduct();
		String catlist=catDAO.getCategory();
		String suplist=supDAO.getSupplier();
		mvc.addObject("Productlist",Productgsonlist);
		mvc.addObject("catlist",catlist);
		mvc.addObject("suplist",suplist);
		mvc.addObject("check",true);
		
		return mvc;
	}
	
	@RequestMapping(value = "/fetchproducttoupdate",method=RequestMethod.GET)
	public ModelAndView fetchproducttoupdate(@RequestParam("prodid")int prodid) 
	{
		Product Productobj=prodDAO.fetchtoupdate(prodid);
		ModelAndView mvc =new ModelAndView("ManageProduct","Product",Productobj);
		String Productgsonlist=prodDAO.getProduct();
		String catlist=catDAO.getCategory();
		String suplist=supDAO.getSupplier();
		mvc.addObject("Productlist",Productgsonlist);
		mvc.addObject("catlist",catlist);
		mvc.addObject("suplist",suplist);
		mvc.addObject("check",false);
		return mvc;
	
	}
	@RequestMapping(value = "/fetchproducttodisplay",method=RequestMethod.GET)
	public ModelAndView fetchproducttodisplay(@RequestParam("prodid")int prodid) 
	{
		String proddata=prodDAO.fetchtodiaplay(prodid);
		ModelAndView mvc =new ModelAndView("ProductDetails","Product",new Product());
		mvc.addObject("productdetails",proddata);
		return mvc;
	
	}
	
	@RequestMapping(value = "/deletProduct",method=RequestMethod.GET)
	public ModelAndView deletProduct(@RequestParam("prodid")int prodid) 
	{
		
		ModelAndView mvc=new ModelAndView("ManageProduct","Product",new Product());
		prodDAO.deleteProduct(prodid);
		String Productgsonlist=prodDAO.getProduct();
		String catlist=catDAO.getCategory();
		String suplist=supDAO.getSupplier();
		mvc.addObject("Productlist",Productgsonlist);
		mvc.addObject("catlist",catlist);
		mvc.addObject("suplist",suplist);
		mvc.addObject("check",true);
		return mvc;
	}
	
	@RequestMapping(value = "/updateProduct",method=RequestMethod.POST)
	public ModelAndView UpadteProduct(Product prodobj) 
	{
		
		int proid=prodobj.getProductId();
		String path="D:\\Finalprojectworkspace\\lootleproject\\src\\main\\webapp\\resources\\productimage\\";
		path=path+String.valueOf(prodobj.getProductId())+".jpg";
		File f=new File(path);
		MultipartFile filedet=prodobj.getProdImage();
		
		if(!filedet.isEmpty())
		{
			try
			{
			  byte[] bytes=filedet.getBytes();
			  FileOutputStream fos=new FileOutputStream(f);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else
		{
			System.out.println("File is Empty not Uploaded");
			
		}
		prodDAO.updateProduct(prodobj, proid);
		ModelAndView mvc=new ModelAndView("ManageProduct","Product",new Product());
		String catlist=catDAO.getCategory();
		String suplist=supDAO.getSupplier();
		String Productgsonlist=prodDAO.getProduct();
		mvc.addObject("Productlist",Productgsonlist);
		mvc.addObject("catlist",catlist);
		mvc.addObject("suplist",suplist);
		mvc.addObject("check",true);
		return mvc;
	}
	
	@RequestMapping(value = "/showallProduct", method = RequestMethod.GET)
	 public ModelAndView showallProduct()
	 {
		ModelAndView mvc=new ModelAndView("AllProducts","Product",new Product());
		String Productgsonlist=prodDAO.getProduct();
		mvc.addObject("Productlist",Productgsonlist);
		
		return mvc;
	}
	
	
}
