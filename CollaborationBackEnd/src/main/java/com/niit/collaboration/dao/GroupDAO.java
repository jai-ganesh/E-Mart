package com.niit.collaboration.dao;

import java.util.List;


import com.niit.collaboration.modal.Group;

public interface GroupDAO {


	public List<Group> list();

	public Group get(int id);
	
	public Group getByName(String name);

	public void saveOrUpdate(Group group);

	public void delete(int id);
	

	


}



