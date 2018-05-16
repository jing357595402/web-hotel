package com.helloworld.bean;

public class CustomerType {
	private int pk;
	private int id;
	private String c_type;
	private int discount;
	private String remark;
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getC_type() {
		return c_type;
	}
	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public CustomerType(int id, String c_type, int discount, String remark) {
		super();
		this.id = id;
		this.c_type = c_type;
		this.discount = discount;
		this.remark = remark;
	}
	public CustomerType() {
		super();
	}
	
}
