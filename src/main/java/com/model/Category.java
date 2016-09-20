package com.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "Categorytbl")
public class Category implements Serializable
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5245910328239506006L;
	@Id
	@GeneratedValue
	@Column(name = "Category_Id")
	private int categoryId;
	@Column(name="Category_Name")
	private String categoryName;
	@Column(name="Category_description")
	private String categoryDecs;

	public Category() {
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryDecs() {
		return categoryDecs;
	}

	public void setCategoryDecs(String categoryDecs) {
		this.categoryDecs = categoryDecs;
	}

}
