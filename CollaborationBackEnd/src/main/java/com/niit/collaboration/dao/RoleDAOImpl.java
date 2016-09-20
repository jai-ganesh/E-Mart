package com.niit.collaboration.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.niit.collaboration.modal.Role;
import com.niit.collaboration.dao.RoleDAO;



@Repository("roledao")
public class RoleDAOImpl implements RoleDAO{
	

	@Autowired
	private SessionFactory sessionFactory;


	public RoleDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Role> list() {
		
		@SuppressWarnings("unchecked")
		List<Role> listRole = (List<Role>) sessionFactory.getCurrentSession()
				.createCriteria(Role.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listRole;
	}

	@Transactional
	public void saveOrUpdate(Role role) {
		sessionFactory.getCurrentSession().saveOrUpdate(role);
	}

	@Transactional
	public void delete(int id) {
		Role  RoleToDelete = new Role();
		RoleToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(RoleToDelete);
	}

	@Transactional
	public Role get(int id) {
		String hql = "from Role where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Role> listRole = (List<Role>) query.list();
		
		if (listRole != null && !listRole.isEmpty()) {
			return listRole.get(0);
		}
		
		return null;
	}
	
	
	@Transactional
	public Role getByName(String name) {
		String hql = "from Role where name=" + "'"+ name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Role> listRole = (List<Role>) query.list();
		
		if (listRole != null && !listRole.isEmpty()) {
			return listRole.get(0);
		}
		
		return null;
	}

	}
