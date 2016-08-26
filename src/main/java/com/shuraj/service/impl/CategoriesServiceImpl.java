package com.shuraj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shuraj.dao.CategoriesDao;
import com.shuraj.model.Categories;
import com.shuraj.service.CategoriesService;

@Service
public class CategoriesServiceImpl implements CategoriesService {
	@Autowired
	private CategoriesDao categoriesDao;
	
	@Transactional
	public void saveCategories(Categories categories) {
		categoriesDao.saveCategories(categories);
	}

	@Transactional
	public List<Categories> listCategories() {
		return categoriesDao.listCategories();
	}

	@Transactional
	public Categories getById(int id) {
		return categoriesDao.getById(id);
	}

	@Transactional
	public void deleteCategories(int id) {
		categoriesDao.deleteCategories(id);
	}

}
