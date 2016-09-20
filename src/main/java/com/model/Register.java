package com.model;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class Register implements Serializable
{
		

	private static final long serialVersionUID = -1103749623349381232L;
		@Id
		@GeneratedValue
		private int userId;
		@Column
	 	private String firstName;
		@Column
		private String lastName;
		@Column
		private String emailId;
		@Column
		private String contact;
		@Column(unique=true)
		private String userName; 
		transient
		private String password;
		transient
		private String confirmPassword;
		@Column
		private String address;
		@Column
		private String state;
		@Column
		private String city;
		@Column
		private String country;
		@Column
		private long pinCode;
	    public Register()
    	{
		
     	}
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getEmailId() {
			return emailId;
		}
		public void setEmailId(String emailId) {
			this.emailId = emailId;
		}
		public String getContact() {
			return contact;
		}
		public void setContact(String contact) {
			this.contact = contact;
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
		public String getConfirmPassword() {
			return confirmPassword;
		}
		public void setConfirmPassword(String confirmPassword) {
			this.confirmPassword = confirmPassword;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getCountry() {
			return country;
		}
		public void setCountry(String country) {
			this.country = country;
		}
		public long getPinCode() {
			return pinCode;
		}
		public void setPinCode(long pinCode) {
			this.pinCode = pinCode;
		}
		
		
		
	
}
