package com.niit.collaboration.dao;

import java.util.List;


import com.niit.collaboration.modal.Friend;

public interface FriendDAO {


	public List<Friend> list();

	public Friend get(int id);
	
	public Friend getByName(String name);

	public void saveOrUpdate(Friend friend);

	public void delete(int id);
	

	


}



