package com.niit.emart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
	@Table(name = "product")
	@Component
	public class Product {

		@Id
		private String  id;
		private String name;
		private String description;
		private double price;
		
		@Column(name = "category_id")
		private String categoryID;
		
		@Column(name = "supplier_id")
		private String supplierID;
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public double getPrice() {
			return price;
		}
		public void setPrice(double price) {
			this.price = price;
		}
		public String getCategoryID() {
			return categoryID;
		}
		public void setCategoryID(String categoryID) {
			this.categoryID = categoryID;
		}
		public String getSupplierID() {
			return supplierID;
		}
		public void setSupplierID(String supplierID) {
			this.supplierID = supplierID;
		}
		
		
		

	}

	
	
	
	

