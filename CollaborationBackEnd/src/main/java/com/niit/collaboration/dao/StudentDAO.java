package com.niit.collaboration.dao;

import java.util.List;


import com.niit.collaboration.modal.Student;

public interface StudentDAO {


	public List<Student> list();

	public Student get(int id);
	
	public Student getByName(String name);

	public void saveOrUpdate(Student stud);

	public void delete(int id);
	

	


}



