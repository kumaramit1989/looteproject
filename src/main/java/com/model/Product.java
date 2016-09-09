package com.model;

import javax.persistence.*;


public class Product 
{
	private int productID;
	private String productName;
	private String description;
	private String image;
	private float price;
	private int quantity;
	public Product(int productID, String productName, String description,String image, float price, int quantity) {
		this.productID = productID;
		this.productName = productName;
		this.description = description;
		this.price = price;
		this.quantity = quantity;
		this.image=image;
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
