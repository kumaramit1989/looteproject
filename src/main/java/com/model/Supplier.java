package com.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Suppliertbl")
public class Supplier implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -89848841142295047L;
	@Id
	@Column(name = "SupplierId")
	@GeneratedValue
	private int supplierId;
	@Column(name = "SupplierName")
	private String supplierName;
	@Column(name = "SupplierContact")
	private String supplierContact;
	@Column(name = "SupplierAdress")
	private String supplierAdress;
	
	
	public Supplier() 
	{
		
	}


	public int getSupplierId() {
		return supplierId;
	}


	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}


	public String getSupplierName() {
		return supplierName;
	}


	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}


	public String getSupplierContact() {
		return supplierContact;
	}


	public void setSupplierContact(String supplierContact) {
		this.supplierContact = supplierContact;
	}


	public String getSupplierAdress() {
		return supplierAdress;
	}


	public void setSupplierAdress(String supplierAdress) {
		this.supplierAdress = supplierAdress;
	}
	
	
	
	
}
