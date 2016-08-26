package com.shuraj.dao;

import java.util.List;

import com.shuraj.model.User;

public interface UserDao {
	public void saveUser(User user);
	public List<User> listUser();
	public User getById(int id);
	public boolean checkUserPass(String email,String password);
	public void deleteUser(int id);
}
