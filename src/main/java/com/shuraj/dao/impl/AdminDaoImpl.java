package com.shuraj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shuraj.dao.AdminDao;
import com.shuraj.model.Admin;

@Repository
public class AdminDaoImpl implements AdminDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveUser(Admin admin) {
		getSession().merge(admin);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Admin> listUser() {
		return getSession().createCriteria(Admin.class).list();
	}

	@Override
	public Admin getById(int id) {
		return (Admin) getSession().get(Admin.class, id);
	}

	@Override
	public boolean checkUser(String username, String password) {
		Query query = getSession().createQuery("FROM Admin WHERE adminUser=:username AND adminPass=:password");
		query.setParameter("username", username);
		query.setParameter("password", password);
		List<Admin> list = query.list();
		if(list.size() > 0){
			return true;
		}
		return false;
	}

	@Override
	public void deleteUser(int id) {
		Admin admin = getById(id);
		if(admin != null){
			getSession().delete(admin);
		}
	}

	@Override
	public List<Admin> getByName(String username) {
		Query query = getSession().createQuery("FROM Admin WHERE adminUser=:username");
		query.setParameter("username", username);
		List<Admin> list = query.list();
		return list;
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
