package com.niit.emart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "SUPPLIER")
@Component
public class Supplier {
	
	@Id
	@Column(name="ID")
	@NotBlank(message = "The id must not be null")
		private String id;
	
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	@NotBlank(message = "The name must not be null")
	@Size(min = 3, max = 15,message = "Enter Minimum 3 characters")
	private String name;
	@NotBlank(message = "The address must not be null")
	@Size(min = 5, max = 25,message = "Enter Minimum 5 characters")
	private String address;
	

}
