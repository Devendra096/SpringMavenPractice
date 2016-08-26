package com.shuraj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shuraj.dao.ProductDao;
import com.shuraj.model.Product;
import com.shuraj.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;
	
	@Transactional
	public void saveProduct(Product product) {
		productDao.saveProduct(product);
	}

	@Transactional
	public List<Product> listProduct() {
		return productDao.listProduct();
	}

	@Transactional
	public Product getById(int id) {
		return productDao.getById(id);
	}

	@Transactional
	public List getByName(String proName) {
		return productDao.getByName(proName);
	}

	@Transactional
	public void deleteProduct(int id) {
		productDao.deleteProduct(id);
	}

	@Transactional
	public List<Product> getNewProduct() {
		return productDao.getNewProduct();
	}

	@Transactional
	public List<Product> getRecomandedProduct() {
		return productDao.getRecomandedProduct();
	}

}
