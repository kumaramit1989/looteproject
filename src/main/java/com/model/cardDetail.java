package com.model;

import java.io.Serializable;

import javax.persistence.Id;

public class cardDetail implements Serializable
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 668566588527121992L;
	
	@Id
	private String cardDetailId;
	private String customerId;
	
	private String cardNumber;
	
	private String expiryMonth;
	
	private String expiryYear;
	
	private String cvNumber;
	
	private String nameOnCard;
	private double totalCost;
	
	
	public cardDetail() {
		
	}
	public String getCardDetailId() {
		return cardDetailId;
	}
	public void setCardDetailId(String cardDetailId) {
		this.cardDetailId = cardDetailId;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getExpiryMonth() {
		return expiryMonth;
	}
	public void setExpiryMonth(String expiryMonth) {
		this.expiryMonth = expiryMonth;
	}
	public String getExpiryYear() {
		return expiryYear;
	}
	public void setExpiryYear(String expiryYear) {
		this.expiryYear = expiryYear;
	}
	public String getCvNumber() {
		return cvNumber;
	}
	public void setCvNumber(String cvNumber) {
		this.cvNumber = cvNumber;
	}
	public String getNameOnCard() {
		return nameOnCard;
	}
	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}
	public double getTotalCost() {
		return totalCost;
	}
	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	


}
