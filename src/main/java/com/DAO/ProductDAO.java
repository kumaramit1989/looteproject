package com.DAO;

import java.util.List;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.model.Product;
import com.model.Supplier;

@Repository
public class ProductDAO {
	@Autowired
	SessionFactory sessionFactory;

	public String getProduct() {
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		List productlist = con.createQuery("FROM Product").list();
		Gson gson = new Gson();
		String jsonNames = gson.toJson(productlist);
		tran.commit();
		con.close();
		return jsonNames;
	}

	// to get the id of last record of table
	public int fetchlastid() {
		Session con = sessionFactory.openSession();
		List lastrec = con.createQuery("FROM Product order by productId desc LIMIT 1 ").list();
		Product lastid = (Product) lastrec.get(0);
		int lid = lastid.getProductId();
		return lid;

	}

}
