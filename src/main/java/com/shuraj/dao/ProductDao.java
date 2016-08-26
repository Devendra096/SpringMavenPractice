package com.shuraj.dao;

import java.util.List;

import com.shuraj.model.Product;

public interface ProductDao {
	public void saveProduct(Product product);
	public List<Product> listProduct();
	public Product getById(int id);
	public List getByName(String proName);
	public void deleteProduct(int id);
	public List<Product> getNewProduct();
	public List<Product> getRecomandedProduct();
	
}
