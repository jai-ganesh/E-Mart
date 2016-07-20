package com.niit.emart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="CATEGORY")
public class Category {

//@NotBlank(message = "The Id must not be null")
	
private String id;
@Size(min = 3, max = 15,message = "Enter Minimum 3 characters")
private String name;
@Size(min = 3, max = 20,message = "Enter Minimum 3 characters")
private String description;
	
	@Id
	@Column(name = "ID")
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
	
	
}