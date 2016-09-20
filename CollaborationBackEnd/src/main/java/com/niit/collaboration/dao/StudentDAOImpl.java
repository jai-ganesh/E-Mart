package com.niit.collaboration.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.niit.collaboration.modal.Student;
import com.niit.collaboration.dao.StudentDAO;



@Repository("studentdao")
public class StudentDAOImpl implements StudentDAO{
	

	@Autowired
	private SessionFactory sessionFactory;


	public StudentDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Student> list() {
		
		@SuppressWarnings("unchecked")
		List<Student> listStudent = (List<Student>) sessionFactory.getCurrentSession()
				.createCriteria(Student.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listStudent;
	}

	@Transactional
	public void saveOrUpdate(Student student) {
		sessionFactory.getCurrentSession().saveOrUpdate(student);
	}

	@Transactional
	public void delete(int id) {
		Student  StudentToDelete = new Student();
		StudentToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(StudentToDelete);
	}

	@Transactional
	public Student get(int id) {
		String hql = "from Student where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Student> listStudent = (List<Student>) query.list();
		
		if (listStudent != null && !listStudent.isEmpty()) {
			return listStudent.get(0);
		}
		
		return null;
	}
	
	
	@Transactional
	public Student getByName(String name) {
		String hql = "from Student where name=" + "'"+ name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Student> listStudent = (List<Student>) query.list();
		
		if (listStudent != null && !listStudent.isEmpty()) {
			return listStudent.get(0);
		}
		
		return null;
	}

	}
