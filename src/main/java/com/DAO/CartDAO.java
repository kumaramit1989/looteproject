package com.DAO;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.model.Cart;
import com.model.Category;
import com.model.Product;

import javassist.tools.reflect.CannotReflectException;
@Repository
public class CartDAO 
{
	String sessionid;
	@Autowired
	SessionFactory sessionFactory;
	public String selectProduct(int prodid,String sessionid)
	{
		this.sessionid=sessionid;
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		String id=Integer.toString(prodid);
		List productdata = con.createQuery("FROM Product where productId="+id).list();
		addproducttocarttbl(productdata);
		Gson gson = new Gson();
		String jsonproduct = gson.toJson(productdata);
		tran.commit();
		con.close();
		return jsonproduct;
	}
	public Object countitems() 
	{
		Session con = sessionFactory.openSession();
		Criteria crit = con.createCriteria(Cart.class);
		crit.add( Restrictions.isNotNull("useridentification"));
		crit.add( Restrictions.eq("useridentification",sessionid));
		crit.setProjection(Projections.sum("quantity"));
		List<Cart> cartsize = crit.list();
		con.close();
		return cartsize.get(0);
		
	}
	public void addproducttocarttbl(List productlist) 
	{
		Cart cart=new Cart();
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		for (Iterator iterator = productlist.iterator(); iterator.hasNext();) 
		{
		
			Product prod=(Product)iterator.next();
			cart.setProductName(prod.getProductName());
			cart.setProductdesc(prod.getProductDescription());
			cart.setPrice(prod.getProductPrice());
			cart.setQuantity(1);
			cart.setTotal(prod.getProductPrice()*cart.getQuantity());
			cart.setUseridentification(sessionid);
			cart.setImgid(prod.getProductId());
			cart.setShippingCharges(0);
		}
		con.save(cart);
		tran.commit();
		con.close();
	}
	
	public String getartitems()
	{		
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		Criteria crit = con.createCriteria(Cart.class);
		crit.add(Restrictions.eq("useridentification",sessionid));
		List<Cart> results = crit.list();
		Gson gson = new Gson();
		String jsonproduct = gson.toJson(results);
		tran.commit();
		con.close();
		return jsonproduct;
		}
	public Object grandtotal() 
	{
		Session con = sessionFactory.openSession();
		Criteria crit = con.createCriteria(Cart.class);
		crit.add( Restrictions.isNotNull("useridentification"));
		crit.add( Restrictions.eq("useridentification",sessionid));
		crit.setProjection(Projections.sum("total"));
		List<Cart> grandtotal = crit.list();
		con.close();
		return grandtotal.get(0);
	}
	
	 public String deletecartitem(int cartid)
	 {
			Session con = sessionFactory.openSession();
			Transaction tran = con.beginTransaction();
			Cart cartCobj = (Cart) con.get(Cart.class, cartid);
			con.delete(cartCobj);
			List cartlist = con.createQuery("FROM Cart").list();
			Gson gson = new Gson();
			String jsoncartlist = gson.toJson(cartlist);
			tran.commit();
			con.close();
			return jsoncartlist;
		}
	 
	 public Cart fetchtotoupdate(int cid)
	 {
	 Session con = sessionFactory.openSession();
	 Transaction tran = con.beginTransaction();
	 Cart catobj=(Cart)con.get(Cart.class, cid);
	 tran.commit();
	 con.close();
	 return catobj;
	
	
	 }
	public void updatecart(Cart cartitems, int cartId)
	{
		System.out.println(cartitems.getQuantity());
		System.out.println(cartitems.getCartId());
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		Cart cartobj = (Cart) con.get(Cart.class, cartId);
		System.out.println(cartobj.getPrice());
		cartobj.setQuantity(cartitems.getQuantity());
		cartobj.setTotal(cartobj.getPrice()*cartitems.getQuantity());
		con.update(cartobj);
		tran.commit();
		con.close();
	}
	 
}
