package com.shuraj.service;

import java.util.List;

import com.shuraj.model.Manufacture;

public interface ManufactureService {
	public void saveManufacture(Manufacture manufacture);
	public List<Manufacture> listManufacture();
	public Manufacture getById(int id);
	public void deleteManufacture(int id);
}
