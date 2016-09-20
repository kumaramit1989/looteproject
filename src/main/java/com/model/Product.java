package com.model;

import java.io.Serializable;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;



@Entity
@Table(name = "Producttbl")
public class Product implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2428134276649060612L;
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
	@Column(name="BrandName")
	private String brandName;
	@Column(name="ProductPrice")
	private float productPrice;
	@Column(name="ProductStock")
	private int productStock;
	transient
	private MultipartFile prodImage;


	public Product() {
		
	}
	
	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
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

	public MultipartFile getProdImage() {
		return prodImage;
	}

	public void setProdImage(MultipartFile prodImage) {
		this.prodImage = prodImage;
	}
	
	
}
