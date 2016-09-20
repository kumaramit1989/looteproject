package com.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.model.Category;
import com.model.Supplier;
import com.sun.org.apache.regexp.internal.RESyntaxException;

@Repository
public class SupplierDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	public void SaveSupplier(Supplier supobj)
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		con.save(supobj);
		tran.commit();
		con.close();
		
	}

	public String getSupplier() 
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		List Supplierlist = con.createQuery("FROM Supplier").list();
		Gson gson = new Gson();
		String jsonNames = gson.toJson(Supplierlist);
		tran.commit();
		con.close();
		return jsonNames;
	}

	public void deleteSupplier(int supid) 
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		Supplier Supplierobj = (Supplier) con.get(Supplier.class, supid);
		con.delete(Supplierobj);
		tran.commit();
		con.close();
		
	}

	public Supplier fetchtotoupdate(int cid) 
	{
		 Session con = sessionFactory.openSession();
		 Transaction tran = con.beginTransaction();
		 Supplier Supplierobj=(Supplier)con.get(Supplier.class, cid);
		 tran.commit();
		 con.close();
		 return Supplierobj;
	}

	public void updateSupplier(Supplier supobj, int supid)
	{
		System.out.println(supid);
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		
		Supplier supplierobj=(Supplier)con.get(Supplier.class, supid);
		supplierobj.setSupplierName(supobj.getSupplierName());
		supplierobj.setSupplierContact(supobj.getSupplierContact());
		supplierobj.setSupplierAdress(supobj.getSupplierAdress());
		tran.commit();
		con.close();
		
	}
	
	//to get the id of last record of table
	public int fetchlastid()
	{
		Session con = sessionFactory.openSession();
		List lastrec = con.createQuery("FROM Supplier order by supplierId desc LIMIT 1 ").list();
		Supplier lastid= (Supplier)lastrec.get(0); 
	int lid= lastid.getSupplierId();
	con.close();
			return lid;
	
	}

}
