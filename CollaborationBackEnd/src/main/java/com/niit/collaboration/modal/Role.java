package com.niit.collaboration.modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;



@Entity
@Table(name="Role")
@Component

public class Role {
	@Id
	private int id;
	private String name;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setId(String string) {
		// TODO Auto-generated method stub
		
	}

	
	
}



	
	
	
	


