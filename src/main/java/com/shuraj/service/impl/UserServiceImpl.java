package com.shuraj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shuraj.dao.UserDao;
import com.shuraj.model.User;
import com.shuraj.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	
	@Override
	public void saveUser(User user) {
		userDao.saveUser(user);
	}

	@Override
	public List<User> listUser() {
		return userDao.listUser();
	}

	@Override
	public User getById(int id) {
		return userDao.getById(id);
	}

	@Override
	public boolean checkUserPass(String email, String password) {
		return userDao.checkUserPass(email, password);
	}

	@Override
	public void deleteUser(int id) {
		userDao.deleteUser(id);
	}

}
