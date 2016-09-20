package com.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Product;

@Repository
public class OrderDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	public void SaveProduct(Product productobj)
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		con.save(productobj);
		tran.commit();
		con.close();
		
	}

}
