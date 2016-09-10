package com.model;

import javax.persistence.*;



@Entity
@Table(name = "Producttbl")
public class Product 
{
	@Id
	@GeneratedValue
	@Column(name="ProductId")
	private int productId;
	@Column(name="ProductName")
	private String productName;
	@Column(name="ProductDescription")
	private String productDescription;
	//private String image;
	@Column(name="CategoryId")
	private int categoryId;
	@Column(name="SupplierId")
	private int supplierId;
	@Column(name="ProductPrice")
	private float productPrice;
	@Column(name="ProductStock")
	private int productStock;
	
	public Product() {
		
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public float getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}
	public int getProductStock() {
		return productStock;
	}
	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}
	
	
}
