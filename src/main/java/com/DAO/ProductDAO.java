package com.DAO;
import java.util.List;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.model.Cart;
import com.model.Category;
import com.model.Product;
@Repository
public class ProductDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	public String getProduct()
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		List productlist = con.createQuery("FROM Product").list();
	
		Gson gson = new Gson();
		String jsonNames = gson.toJson(productlist);
		tran.commit();
		con.close();
		return jsonNames;
	}
	
	public void SaveProduct(Product productobj)
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		con.save(productobj);
		tran.commit();
		con.close();
		
	}

 // to get the id of last record of table
	public int fetchlastid() {
		Session con = sessionFactory.openSession();
		List lastrec = con.createQuery("FROM Product order by productId desc LIMIT 1 ").list();
		Product lastid = (Product) lastrec.get(0);
		int lid = lastid.getProductId();
		con.close();
		return lid;

	}
	
	 public Product fetchtoupdate(int proid)
	 {
	 Session con = sessionFactory.openSession();
	 Transaction tran = con.beginTransaction();
	 Product prodobj=(Product)con.get(Product.class, proid);
	 tran.commit();
	 con.close();
	 return prodobj;
	 }
	 
	 public void updateProduct(Product prodobj, int proid)
		{
			Session con = sessionFactory.openSession();
			Transaction tran = con.beginTransaction();
			Product Productobj = (Product) con.get(Product.class, proid);
			Productobj.setProductName(prodobj.getProductName());
			Productobj.setProductDescription(prodobj.getProductDescription());
			Productobj.setCategoryId(prodobj.getCategoryId());
			Productobj.setSupplierId(prodobj.getSupplierId());
			Productobj.setBrandName(prodobj.getBrandName());
			Productobj.setProductPrice(prodobj.getProductPrice());
			Productobj.setProductStock(prodobj.getProductStock());
			con.update(Productobj);
			tran.commit();
			con.close();
		}
	 
	 public void deleteProduct(int prodid)
	 {
			Session con = sessionFactory.openSession();
			Transaction tran = con.beginTransaction();
			Product ProductCobj = (Product) con.get(Product.class, prodid);
			con.delete(ProductCobj);
			tran.commit();
			con.close();

		}
	 
	
	public String fetchtodiaplay(int prodid)
	{
		 Session con = sessionFactory.openSession();
		 Transaction tran = con.beginTransaction();
		String id=Integer.toString(prodid);
			List productdata = con.createQuery("FROM Product where productId="+id).list();
		Gson gson = new Gson();
	String jsonproduct = gson.toJson(productdata);
		 tran.commit();
		 con.close();
		 return jsonproduct;
	}
	
	public String getProductbycategory()
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		List productlist = con.createQuery("FROM Product").list();
		Gson gson = new Gson();
		String jsonNames = gson.toJson(productlist);
		tran.commit();
		con.close();
		return jsonNames;
	}
	
	public String fetchrecentprojects()
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		List lastrec = con.createQuery("FROM Product order by productId desc LIMIT 10 ").list();
		Gson gson = new Gson();
		String jsonNames = gson.toJson(lastrec);
		tran.commit();
		con.close();
		return jsonNames;

	}
	
	public String productscategorywise(int catid)
	{
		 Session con = sessionFactory.openSession();
		 Transaction tran = con.beginTransaction();
		String cid=Integer.toString(catid);
			List productdata = con.createQuery("FROM Product where categoryId="+cid).list();
			Gson gson = new Gson();
		String jsonproduct = gson.toJson(productdata);
		 tran.commit();
		 con.close();
		 return jsonproduct;
	}

}
