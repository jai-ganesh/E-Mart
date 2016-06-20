package com.niit.emart.userdao;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.emart.bean.Category;

@Repository
public class CategoryDAO {

	public List<Category> getAllCategories(){
		List<Category> list = new ArrayList<Category>();
		Category c1 = new Category();
		c1.setId("CAT_FR");
		c1.setName("Fruits");
		c1.setDescription("This is Fruit Category");
		
		list.add(c1);
		
		c1=new Category();
		c1.setId("CAT_VEG");
		c1.setName("Vegetables");
		c1.setDescription("This is Vegetable Category");
	
list.add(c1);
		
		c1=new Category();
		c1.setId("CAT_GR");
		c1.setName("Greens");
		c1.setDescription("This is Greens Category");
		
		list.add(c1);
		return list;
		
	}
	public int updateCategories(List<Category> categoryList)
	{
		return 1;
	}
}
