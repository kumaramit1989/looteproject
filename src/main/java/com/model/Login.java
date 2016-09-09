package com.model;

public class Login 
{
	String userName;
	String emailId;
	String newPassword;
	String password;
	public Login() {
	
	}
	
	public Login(String userName, String emailId, String newPassword, String password) {
	
		this.userName = userName;
		this.emailId = emailId;
		this.newPassword = newPassword;
		this.password = password;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	
}
