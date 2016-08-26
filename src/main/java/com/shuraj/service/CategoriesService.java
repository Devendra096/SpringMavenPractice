package com.shuraj.service;

import java.util.List;

import com.shuraj.model.Categories;

public interface CategoriesService {
	public void saveCategories(Categories categories);
	public List<Categories> listCategories();
	public Categories getById(int id);
	public void deleteCategories(int id);
}
