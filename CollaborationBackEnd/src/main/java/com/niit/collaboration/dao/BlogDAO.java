package com.niit.collaboration.dao;

import java.util.List;


import com.niit.collaboration.modal.Blog;

public interface BlogDAO {


	public List<Blog> list();

	public Blog get(int id);
	
	public Blog getByName(String name);

	public void saveOrUpdate(Blog blog);

	public void delete(int id);
	

	


}



