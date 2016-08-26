package com.shuraj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shuraj.dao.AdminDao;
import com.shuraj.model.Admin;
import com.shuraj.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao adminDao;
	
	@Transactional
	public void saveUser(Admin admin) {
		adminDao.saveUser(admin);
	}

	@Transactional
	public List<Admin> listUser() {
		return adminDao.listUser();
	}

	@Transactional
	public Admin getById(int id) {
		return adminDao.getById(id);
	}

	@Transactional
	public boolean checkUser(String username, String password) {
		return adminDao.checkUser(username, password);
	}

	@Transactional
	public void deleteUser(int id) {
		adminDao.deleteUser(id);
	}

	@Transactional
	public List<Admin> getByName(String username) {
		return adminDao.getByName(username);
	}

}
