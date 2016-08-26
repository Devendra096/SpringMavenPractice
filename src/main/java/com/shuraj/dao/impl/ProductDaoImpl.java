package com.shuraj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shuraj.dao.ProductDao;
import com.shuraj.model.Product;
@Repository
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveProduct(Product product) {
		getSession().merge(product);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> listProduct() {
		return getSession().createCriteria(Product.class).list();
	}

	@Override
	public Product getById(int id) {
		return (Product) getSession().get(Product.class, id) ;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getByName(String proName) {
		Query query = getSession().createQuery("From Product WHERE proName=:proName");
		query.setParameter("proName", proName);
		return query.list();
	}

	@Override
	public void deleteProduct(int id) {
		Product product = getById(id);
		if(product != null){
			getSession().delete(product);
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getNewProduct() {
		Query query = getSession().createQuery("FROM Product ORDER BY proId DESC ");
		query.setMaxResults(1);
		List<Product> list = query.list();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getRecomandedProduct() {
		Query query = getSession().createQuery("FROM Product ORDER BY rand()");
		query.setMaxResults(3);
		List<Product> list = query.list();
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
