package com.shuraj.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="pro_id")
	private int proId;
	@Column(name="pro_name")
	private String proName;
	@Column(name="pro_desc")
	private String proDesc;
	@Column(name="pro_availabity")
	private String proAvailabity;
	@Column(name="pro_warranty")
	private String proWarranty;
	@Column(name="pro_delivery")
	private String proDelivery;
	@Column(name="pro_cat")
	private int proCat;
	@Column(name="pro_manu")
	private int proManu;
	@Column(name="pro_image")
	private String proImage;
	@Column(name="pro_price")
	private int proPrice;
	
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getProDesc() {
		return proDesc;
	}
	public void setProDesc(String proDesc) {
		this.proDesc = proDesc;
	}
	public String getProAvailabity() {
		return proAvailabity;
	}
	public void setProAvailabity(String proAvailabity) {
		this.proAvailabity = proAvailabity;
	}
	public String getProWarranty() {
		return proWarranty;
	}
	public void setProWarranty(String proWarranty) {
		this.proWarranty = proWarranty;
	}
	public String getProDelivery() {
		return proDelivery;
	}
	public void setProDelivery(String proDelivery) {
		this.proDelivery = proDelivery;
	}
	public int getProCat() {
		return proCat;
	}
	public void setProCat(int proCat) {
		this.proCat = proCat;
	}
	public int getProManu() {
		return proManu;
	}
	public void setProManu(int proManu) {
		this.proManu = proManu;
	}
	public String getProImage() {
		return proImage;
	}
	public void setProImage(String proImage) {
		this.proImage = proImage;
	}
	public int getProPrice() {
		return proPrice;
	}
	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}
	
	
}
