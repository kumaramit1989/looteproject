package com.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Product;
import com.model.Register;
import com.model.resetpassword;
import com.model.userCredentia;

@Repository
public class RegisterDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	public void registerUser(Register regobj) 
	{
			Session con = sessionFactory.openSession();
			Transaction tran = con.beginTransaction();
			con.save(regobj);
			tran.commit();
			con.close();
			
		
	}
	
	public void addCredencial(userCredentia credenobj) 
	{
		Session con = sessionFactory.openSession();
		Transaction tran = con.beginTransaction();
		con.save(credenobj);
		tran.commit();
		con.close();
	}
	
	public String getname(String username) 
	{
		Session con = sessionFactory.openSession();
		 Transaction tran = con.beginTransaction();
		 List name = con.createQuery("FROM Register where firstName="+username).list();
		 Register regobj = (Register) name.get(0);
		 con.close();
		return regobj.getFirstName();
	}
	
	public void  updatepassword(resetpassword respssobj)
	{
		
		String username=respssobj.getUserName();
		System.out.println(username);
		 Session con = sessionFactory.openSession();
		 Transaction tran = con.beginTransaction();
		 userCredentia user=(userCredentia)con.get(userCredentia.class, username);
		 user.setPassword(respssobj.getPassword());
		 tran.commit();
		 con.close();
		
				
	}
}
