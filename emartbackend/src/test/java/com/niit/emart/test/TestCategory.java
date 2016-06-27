package com.niit.emart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.emart.dao.CategoryDAO;
import com.niit.emart.model.Category;

public class TestCategory {

	public static void main(String[] args){
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.emart");
		context.refresh();
		
   	CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		Category category = new Category();
		 category.setId("1");
		category.setName("Apple");
		category.setDescription("This is Apple");
			
		categoryDAO.saveOrUpdate(category);
	
		
		
		/*categoryDAO.delete("1");*/
		
	}
}
