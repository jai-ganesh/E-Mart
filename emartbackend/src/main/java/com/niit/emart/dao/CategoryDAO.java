package com.niit.emart.dao;

import java.util.List;

import com.niit.emart.model.Category;
import com.niit.emart.model.Supplier;

public interface CategoryDAO {


	public List<Category> list();

	public Category get(int id);
	
	public Category getByName(String name);

	public void saveOrUpdate(Category category);

	public void delete(int id);

}

