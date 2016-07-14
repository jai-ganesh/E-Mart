package com.niit.emart.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.niit.emart.model.Product;

public class ProductValidator implements Validator{

	public boolean supports(Class<?> a) {
		return Product.class.equals(a);
	}

	public void validate(Object arg0, Errors arg1) {
		Product p = (Product) arg0;
		
	}
	

}
