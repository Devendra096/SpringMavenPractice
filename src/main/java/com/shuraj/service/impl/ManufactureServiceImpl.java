package com.shuraj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shuraj.dao.ManufactureDao;
import com.shuraj.model.Manufacture;
import com.shuraj.service.ManufactureService;

@Service
public class ManufactureServiceImpl implements ManufactureService {
	@Autowired
	private ManufactureDao manufactureDao;
	
	@Transactional
	public void saveManufacture(Manufacture manufacture) {
		manufactureDao.saveManufacture(manufacture);
	}

	@Transactional
	public List<Manufacture> listManufacture() {
		return manufactureDao.listManufacture();
	}

	@Transactional
	public Manufacture getById(int id) {
		return manufactureDao.getById(id);
	}

	@Transactional
	public void deleteManufacture(int id) {
		manufactureDao.deleteManufacture(id);
	}

}
