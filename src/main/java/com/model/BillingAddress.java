package com.model;

import java.io.Serializable;

import javax.persistence.Id;

public class BillingAddress implements Serializable
{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2681644729074495371L;
	
	@Id
	private String billingAddressId;
	private String customerId;
	
	private String line1;
	
	private String line2;

	
	private String city;
	
	private String state;
	
	private String country;
	
	private String zipCode;

	public BillingAddress() {
		
	}

	public String getBillingAddressId() {
		return billingAddressId;
	}

	public void setBillingAddressId(String billingAddressId) {
		this.billingAddressId = billingAddressId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getLine1() {
		return line1;
	}

	public void setLine1(String line1) {
		this.line1 = line1;
	}

	public String getLine2() {
		return line2;
	}

	public void setLine2(String line2) {
		this.line2 = line2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	

}
