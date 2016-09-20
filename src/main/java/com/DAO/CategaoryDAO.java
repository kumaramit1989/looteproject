package com.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.model.Category;
import com.model.Supplier;

@Repository
public class CategaoryDAO {

	@Autowired
	SessionFactory sessionFactory;

	// save category method
	public void SaveCategory(Category c) {

		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		con.save(c);
		tran.commit();
		con.close();

	}

	// delete category method
	public void deleteCategory(int catid) {
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		Category Categoryobj = (Category) con.get(Category.class, catid);
		con.delete(Categoryobj);
		tran.commit();
		con.close();

	}

	// get category method
	public String getCategory()
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		List catlist = con.createQuery("FROM Category").list();
		Gson gson = new Gson();
		String jsonNames = gson.toJson(catlist);
		tran.commit();
		con.close();
		return jsonNames;
	}

	// get category by category id
	 public Category fetchtotoupdate(int cid)
	 {
	 Session con = sessionFactory.openSession();
	 Transaction tran = con.beginTransaction();
	 Category catobj=(Category)con.get(Category.class, cid);
	 tran.commit();
	 con.close();
	 return catobj;
	
	
	 }
	

	public void updateCategory(Category catobj, int cid)
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		Category Categoryobj = (Category) con.get(Category.class, cid);
		Categoryobj.setCategoryName(catobj.getCategoryName());
		Categoryobj.setCategoryDecs(catobj.getCategoryDecs());
		
		con.update(Categoryobj);
		tran.commit();
		con.close();
	}
	
	//to get the id of last record of table
	public int fetchlastid()
	{
		Session con = sessionFactory.openSession();
		List lastrec = con.createQuery("FROM Category order by categoryId desc LIMIT 1 ").list();
		
		Category lastid= (Category)lastrec.get(0); 
	int lid= lastid.getCategoryId();
	con.close();
			return lid;
	
	}

	
}
