package com.shuraj.dao;

import java.util.List;

import com.shuraj.model.Manufacture;

public interface ManufactureDao {
	public void saveManufacture(Manufacture manufacture);
	public List<Manufacture> listManufacture();
	public Manufacture getById(int id);
	public void deleteManufacture(int id);
}
