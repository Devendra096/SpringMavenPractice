package com.shuraj.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shuraj.dao.CategoriesDao;
import com.shuraj.model.Categories;
@Repository
public class CategoriesDaoImpl implements CategoriesDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveCategories(Categories categories) {
		getSession().merge(categories);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Categories> listCategories() {
		return getSession().createCriteria(Categories.class).list();
	}

	@Override
	public Categories getById(int id) {
		return (Categories) getSession().get(Categories.class, id);
	}

	@Override
	public void deleteCategories(int id) {
		Categories categories = getById(id);
		if(categories != null){
			getSession().delete(categories);
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
