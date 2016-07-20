package com.niit.emart.dao;

import java.util.List;

import com.niit.emart.model.Cart;

public interface CartDAO {

	public List<Cart> list();
	public Cart get(String id);
	public void saveOrUpdate(Cart Cart);
	public String delete(String id);
	public int getTotalAmount(String id);

}
