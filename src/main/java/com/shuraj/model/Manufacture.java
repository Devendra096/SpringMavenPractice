package com.shuraj.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Manufacture {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="manu_id")
	private int manuId;
	@Column(name="manu_name")
	private String manuName;
	public int getManuId() {
		return manuId;
	}
	public void setManuId(int manuId) {
		this.manuId = manuId;
	}
	public String getManuName() {
		return manuName;
	}
	public void setManuName(String manuName) {
		this.manuName = manuName;
	}
	
	
}
