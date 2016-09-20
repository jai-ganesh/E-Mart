package com.niit.collaboration.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.collaboration.modal.UserDetails;
import com.niit.collaboration.dao.UserDetailsDAO;

@Repository("userdetailsdao")
public class UserDetailsDAOImpl implements UserDetailsDAO{
	

	@Autowired
	private SessionFactory sessionFactory;


	public UserDetailsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<UserDetails> list() {
		
		@SuppressWarnings("unchecked")
		List<UserDetails> listUserDetails = (List<UserDetails>) sessionFactory.getCurrentSession()
				.createCriteria(UserDetails.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listUserDetails;
	}

	/*@Transactional
	public void saveOrUpdate(UserDetails userdetails) {
		sessionFactory.getCurrentSession().saveOrUpdate(userdetails);
	}

	@Transactional
	public void delete(int id) {
		UserDetails  UserDetailsToDelete = new UserDetails();
		UserDetailsToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(UserDetailsToDelete);
	}

	@Transactional
	public UserDetails get(int id) {
		String hql = "from UserDetails where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UserDetails> listUserDetails = (List<UserDetails>) query.list();
		
		if (listUserDetails != null && !listUserDetails.isEmpty()) {
			return listUserDetails.get(0);
		}
		
		return null;
	}
	
	@Transactional
	public UserDetails getByName(String name) {
		String hql = "from UserDetails where name=" + "'"+ name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UserDetails> listUserDetails = (List<UserDetails>) query.list();
		
		if (listUserDetails != null && !listUserDetails.isEmpty()) {
			return listUserDetails.get(0);
		}
		
		return null;
	}
*/
	
	}
