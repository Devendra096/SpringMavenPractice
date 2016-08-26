package com.shuraj.service;

import java.util.List;

import com.shuraj.model.User;

public interface UserService {
	public void saveUser(User user);
	public List<User> listUser();
	public User getById(int id);
	public boolean checkUserPass(String email,String password);
	public void deleteUser(int id);
}
