package com.shuraj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shuraj.dao.UserDao;
import com.shuraj.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveUser(User user) {
		getSession().merge(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> listUser() {
		return getSession().createCriteria(User.class).list();
	}

	@Override
	public User getById(int id) {
		return (User) getSession().get(User.class, id);
	}

	@Override
	public boolean checkUserPass(String email, String password) {
		Query query = getSession().createQuery("FROM User WHERE email=:email AND password=:password");
		query.setParameter("email", email);
		query.setParameter("password", password);
		List<User> list = query.list();
		if(list.size() > 0){
			return true;
		}
		return false;
	}

	@Override
	public void deleteUser(int id) {
		User user = getById(id);
		if(user != null){
			getSession().delete(user);
		}
	}
	
	private Session getSession(){
		Session sess = getSessionFactory().getCurrentSession();
		if(sess == null){
			sess = getSessionFactory().openSession();
		}
		return sess;
	}
	private SessionFactory getSessionFactory(){
		return sessionFactory;
	}
}
