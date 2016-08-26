package com.shuraj.dao;

import java.util.List;

import com.shuraj.model.Admin;

public interface AdminDao {
	public void saveUser(Admin admin);
	public List<Admin> listUser();
	public Admin getById(int id);
	public boolean checkUser(String username, String password);
	public void deleteUser(int id);
	public List<Admin> getByName(String username);
}
