package com.niit.collaboration.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.niit.collaboration.modal.Employee;
import com.niit.collaboration.dao.EmployeeDAO;



@Repository("employeedao")
public class EmployeeDAOImpl implements EmployeeDAO{
	

	@Autowired
	private SessionFactory sessionFactory;


	public EmployeeDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Employee> list() {
		
		@SuppressWarnings("unchecked")
		List<Employee> listEmployee = (List<Employee>) sessionFactory.getCurrentSession()
				.createCriteria(Employee.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listEmployee;
	}

	@Transactional
	public void saveOrUpdate(Employee employee) {
		sessionFactory.getCurrentSession().saveOrUpdate(employee);
	}

	@Transactional
	public void delete(int id) {
		Employee  EmployeeToDelete = new Employee();
		EmployeeToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(EmployeeToDelete);
	}

	@Transactional
	public Employee get(int id) {
		String hql = "from Employee where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Employee> listEmployee = (List<Employee>) query.list();
		
		if (listEmployee != null && !listEmployee.isEmpty()) {
			return listEmployee.get(0);
		}
		
		return null;
	}
	
	
	@Transactional
	public Employee getByName(String name) {
		String hql = "from Employee where name=" + "'"+ name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Employee> listEmployee = (List<Employee>) query.list();
		
		if (listEmployee != null && !listEmployee.isEmpty()) {
			return listEmployee.get(0);
		}
		
		return null;
	}

	}
