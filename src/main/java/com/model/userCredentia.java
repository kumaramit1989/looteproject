package com.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class userCredentia implements Serializable
{	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8296901106744620988L;
	@Id
	@Column
	private String userName;
	@Column
	private String password;
	@Column
    private	boolean enabled;
	@Column
    private String role;
	
	
	public userCredentia()
	{
		
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public boolean isEnabled() {
		return enabled;
	}


	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}
	
	
}
