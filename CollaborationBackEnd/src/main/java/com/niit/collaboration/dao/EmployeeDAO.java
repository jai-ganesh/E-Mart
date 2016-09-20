package com.niit.collaboration.dao;

import java.util.List;


import com.niit.collaboration.modal.Employee;

public interface EmployeeDAO {


	public List<Employee> list();

	public Employee get(int id);
	
	public Employee getByName(String name);

	public void saveOrUpdate(Employee employee);

	public void delete(int id);
	
}



