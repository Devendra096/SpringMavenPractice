package com.shuraj.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shuraj.dao.ManufactureDao;
import com.shuraj.model.Manufacture;

@Repository
public class ManufactureDaoImpl implements ManufactureDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveManufacture(Manufacture manufacture) {
		getSession().merge(manufacture);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Manufacture> listManufacture() {
		return getSession().createCriteria(Manufacture.class).list();
	}

	@Override
	public Manufacture getById(int id) {
		return (Manufacture) getSession().get(Manufacture.class, id);
	}

	@Override
	public void deleteManufacture(int id) {
		Manufacture manufacture = getById(id);
		if(manufacture != null){
			getSession().delete(manufacture);
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
