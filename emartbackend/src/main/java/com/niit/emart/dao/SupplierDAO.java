package com.niit.emart.dao;

import java.util.List;


import com.niit.emart.model.Supplier;

public interface SupplierDAO {


	public List<Supplier> list();

	public Supplier get(int id);
	
	public Supplier getByName(String name);

	public void saveOrUpdate(Supplier supplier);

	public String delete(int id);


}
