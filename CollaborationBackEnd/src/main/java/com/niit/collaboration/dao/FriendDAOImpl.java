package com.niit.collaboration.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.niit.collaboration.modal.Friend;
import com.niit.collaboration.dao.FriendDAO;



@Repository("frienddao")
public class FriendDAOImpl implements FriendDAO{
	

	@Autowired
	private SessionFactory sessionFactory;


	public FriendDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Friend> list() {
		
		@SuppressWarnings("unchecked")
		List<Friend> listFriend = (List<Friend>) sessionFactory.getCurrentSession()
				.createCriteria(Friend.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listFriend;
	}

	@Transactional
	public void saveOrUpdate(Friend friend) {
		sessionFactory.getCurrentSession().saveOrUpdate(friend);
	}

	@Transactional
	public void delete(int id) {
		Friend  FriendToDelete = new Friend();
		FriendToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(FriendToDelete);
	}

	@Transactional
	public Friend get(int id) {
		String hql = "from Friend where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Friend> listFriend = (List<Friend>) query.list();
		
		if (listFriend != null && !listFriend.isEmpty()) {
			return listFriend.get(0);
		}
		
		return null;
	}
	
	
	@Transactional
	public Friend getByName(String name) {
		String hql = "from Friend where name=" + "'"+ name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Friend> listFriend = (List<Friend>) query.list();
		
		if (listFriend != null && !listFriend.isEmpty()) {
			return listFriend.get(0);
		}
		
		return null;
	}

	}
