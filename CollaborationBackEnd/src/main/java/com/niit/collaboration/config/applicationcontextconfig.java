package com.niit.collaboration.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.collaboration.dao.BlogDAO;
import com.niit.collaboration.dao.BlogDAOImpl;
import com.niit.collaboration.dao.EmployeeDAO;
import com.niit.collaboration.dao.EmployeeDAOImpl;
import com.niit.collaboration.dao.FriendDAO;
import com.niit.collaboration.dao.FriendDAOImpl;
import com.niit.collaboration.dao.GroupDAO;
import com.niit.collaboration.dao.GroupDAOImpl;
import com.niit.collaboration.dao.RoleDAO;
import com.niit.collaboration.dao.RoleDAOImpl;
import com.niit.collaboration.dao.StudentDAO;
import com.niit.collaboration.dao.StudentDAOImpl;
import com.niit.collaboration.dao.UserDAO;
import com.niit.collaboration.dao.UserDAOImpl;
import com.niit.collaboration.dao.UserDetailsDAO;
import com.niit.collaboration.dao.UserDetailsDAOImpl;
import com.niit.collaboration.modal.Blog;
import com.niit.collaboration.modal.Employee;
import com.niit.collaboration.modal.Friend;
import com.niit.collaboration.modal.Group;
import com.niit.collaboration.modal.Role;
import com.niit.collaboration.modal.Student;
import com.niit.collaboration.modal.User;
import com.niit.collaboration.modal.UserDetails;




@Configuration
@ComponentScan("com.niit.collaboration")
@EnableTransactionManagement
public class applicationcontextconfig {
	

    
    @Bean(name = "dataSource")
    public DataSource getDataSource() {
    	BasicDataSource dataSource = new BasicDataSource();
    	dataSource.setDriverClassName("org.h2.Driver");
    	dataSource.setUrl("jdbc:h2:tcp://localhost/~/divya");
    	dataSource.setUsername("divya");
    	dataSource.setPassword("");
    	
    	return dataSource;
    }
    
    
    private Properties getHibernateProperties() 
    {
    	Properties properties = new Properties();
    	properties.put("hibernate.hbm2ddl.auto", "update");
    	properties.put("hibernate.show_sql", true);
    	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
    	return properties;
    }
    
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	sessionBuilder.addAnnotatedClasses(User.class);
    	sessionBuilder.addAnnotatedClasses(Role.class);
    	sessionBuilder.addAnnotatedClasses(Employee.class);
    	sessionBuilder.addAnnotatedClasses(Student.class);
    	sessionBuilder.addAnnotatedClasses(Blog.class);
    	sessionBuilder.addAnnotatedClasses(UserDetails.class);
    	sessionBuilder.addAnnotatedClasses(Friend.class);
    	sessionBuilder.addAnnotatedClasses(Group.class);
    	    	return sessionBuilder.buildSessionFactory();
    }
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
	}
    
    

    @Autowired
    @Bean(name = "userDAO")
    public UserDAO getUserDAO(SessionFactory sessionFactory) {
    	return new UserDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "roledao")
    public RoleDAO getRoleDAO(SessionFactory sessionFactory) {
    	return new RoleDAOImpl(sessionFactory);
    }
    
    
    @Autowired
    @Bean(name = "employeedao")
    public EmployeeDAO getEmployeeDAO(SessionFactory sessionFactory) {
    	return new EmployeeDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "studentdao")
    public StudentDAO getStudentDAO(SessionFactory sessionFactory) {
    	return new StudentDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "blogdao")
    public BlogDAO getBlogDAO(SessionFactory sessionFactory) {
    	return new BlogDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "userdetailsdao")
    public UserDetailsDAO getUserDetailsDAO(SessionFactory sessionFactory) {
    	return new UserDetailsDAOImpl(sessionFactory);
    }

    @Autowired
    @Bean(name = "frienddao")
    public FriendDAO getFriendDAO(SessionFactory sessionFactory) {
    	return new FriendDAOImpl(sessionFactory);
    }

    @Autowired
    @Bean(name = "groupdao")
    public GroupDAO getGroupDAO(SessionFactory sessionFactory) {
    	return new GroupDAOImpl(sessionFactory);
    }






  }



