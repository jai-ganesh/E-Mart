package com.niit.emart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Entity
@Table (name="CART")
@Component
public class Cart {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@Transient
	private int total;
	private String productName;
	private int price;
	private int quantity;
		public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getId(){
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String userID;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int d) {
		this.price = d;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}

}
