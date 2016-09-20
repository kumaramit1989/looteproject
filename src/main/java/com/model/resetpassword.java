package com.model;

import java.io.Serializable;

public class resetpassword  implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5117490507857056241L;
	private String userName;
	private String password;
	private String ConfirmPassword;
	
	public resetpassword() 
	{
		
	}
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName) 
	{
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) 
	{
		this.password = password;
	}
	public String getConfirmPassword()
	{
		return ConfirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) 
	{
		ConfirmPassword = confirmPassword;
	}
	
}
