package com.shuraj.dao;

import java.util.List;

import com.shuraj.model.Categories;

public interface CategoriesDao {
	public void saveCategories(Categories categories);
	public List<Categories> listCategories();
	public Categories getById(int id);
	public void deleteCategories(int id);
}
