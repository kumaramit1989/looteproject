package com.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class OrderDetails implements Serializable
{
		/**
	 * 
	 */
	private static final long serialVersionUID = 7607292277213894319L;
		@Id
		@GeneratedValue
		private int orderid;
		private int quantity;
		private double grandtotal;
		private Date orderDate;
		
		
		public OrderDetails() {
			
		}
		public int getOrderid() {
			return orderid;
		}
		public void setOrderid(int orderid) {
			this.orderid = orderid;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
	
		public double getGrandtotal() {
			return grandtotal;
		}
		public void setGrandtotal(double grandtotal) {
			this.grandtotal = grandtotal;
		}
		public Date getOrderDate() {
			return orderDate;
		}
		public void setOrderDate(Date orderDate) {
			this.orderDate = orderDate;
		}
		
		
		
}
