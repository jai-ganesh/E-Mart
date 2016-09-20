package com.niit.collaboration.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.niit.collaboration.modal.Group;
import com.niit.collaboration.dao.GroupDAO;



@Repository("groupdao")
public class GroupDAOImpl implements GroupDAO{
	

	@Autowired
	private SessionFactory sessionFactory;


	public GroupDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Group> list() {
		
		@SuppressWarnings("unchecked")
		List<Group> listGroup = (List<Group>) sessionFactory.getCurrentSession()
				.createCriteria(Group.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listGroup;
	}

	@Transactional
	public void saveOrUpdate(Group group) {
		sessionFactory.getCurrentSession().saveOrUpdate(group);
	}

	@Transactional
	public void delete(int id) {
		Group  GroupToDelete = new Group();
		GroupToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(GroupToDelete);
	}

	@Transactional
	public Group get(int id) {
		String hql = "from Group where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Group> listGroup = (List<Group>) query.list();
		
		if (listGroup != null && !listGroup.isEmpty()) {
			return listGroup.get(0);
		}
		
		return null;
	}
	
	
	@Transactional
	public Group getByName(String name) {
		String hql = "from Group where name=" + "'"+ name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Group> listGroup = (List<Group>) query.list();
		
		if (listGroup != null && !listGroup.isEmpty()) {
			return listGroup.get(0);
		}
		
		return null;
	}

	}
