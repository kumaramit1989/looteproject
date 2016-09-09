package com.DAO;

import java.util.List;
import java.util.ArrayList;
import org.springframework.stereotype.Repository;

import com.model.Product;

@Repository
public class ProductDAO
{

	public List<Product> getProduct()
	{
		ArrayList <Product>li=new ArrayList<Product>();
		li.add(new Product(1, "Cinthol Men's Deo Stick Intense 40g", "Presenting Cinthol deo stick","s1",35.67f, 100));
		li.add(new Product(2, "Nivea Fresh Active Original 48 Hours Deodorant, 150ml", "NIVEA Fresh Active Original","s2", 200.50f, 150));
		li.add(new Product(3, "AXE Dark Temptation Deodorant 150 ml", "Just be you, a confident man who likes to take the world by storm.","s3", 21.00f, 400));
	    li.add(new Product(4, "Casio Edifice Tachymeter Chronograph Black Dial Men's Watch", "Dial Color: Black, Case Shape: Round, Dial Glass material: Mineral","s3", 21677.00f, 400));
	    li.add(new Product(5, "Golden Bell Analogue Black Dial Men's Watch-GB-201Blk", "Brass Steel Case : Disclaimer Chronograph are Dummy and do not Work","s3", 2981.00f, 400));
		li.add(new Product(6, "Fitbit Surge Ultimate Fitness Super Watch, Large", "Maximize training, maintain intensity and monitor calorie burn with automatic wrist-based heart rate monitoring","s3", 234351.00f, 400));
		return li;
	}
	

}
