package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Cart implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
  private int cartId;
  private String productName;
  private String productdesc;
  private double price;
  private int quantity;
  private double shippingCharges;
  private String useridentification;
  private int imgid;
  private double total;
 
  
public Cart() 
{
	
}
public int getCartId() {
	return cartId;
}
public void setCartId(int cartId) {
	this.cartId = cartId;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public String getProductdesc() {
	return productdesc;
}
public void setProductdesc(String productdesc) {
	this.productdesc = productdesc;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}

public double getTotal() {
	return total;
}
public void setTotal(double total) {
	this.total = total;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getShippingCharges() {
	return shippingCharges;
}
public void setShippingCharges(double shippingCharges) {
	this.shippingCharges = shippingCharges;
}
public String getUseridentification() {
	return useridentification;
}
public void setUseridentification(String useridentification) {
	this.useridentification = useridentification;
}
public int getImgid() {
	return imgid;
}
public void setImgid(int imgid) {
	this.imgid = imgid;
}
}
