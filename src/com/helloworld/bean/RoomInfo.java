package com.helloworld.bean;

public class RoomInfo {
	private int pk;
	private String num;
	private int r_type_id;
	private int states;
	private String r_tel;
	private String remark;
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public int getR_type_id() {
		return r_type_id;
	}
	public void setR_type_id(int r_type_id) {
		this.r_type_id = r_type_id;
	}
	public int getStates() {
		return states;
	}
	public void setStates(int states) {
		this.states = states;
	}
	public String getR_tel() {
		return r_tel;
	}
	public void setR_tel(String r_tel) {
		this.r_tel = r_tel;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public RoomInfo() {
		super();
	}
	public RoomInfo(int pk, String num, int r_type_id, int states,
			String r_tel, String remark) {
		super();
		this.pk = pk;
		this.num = num;
		this.r_type_id = r_type_id;
		this.states = states;
		this.r_tel = r_tel;
		this.remark = remark;
	}
	public RoomInfo(String num, int r_type_id, int states, String r_tel,
			String remark) {
		super();
		this.num = num;
		this.r_type_id = r_type_id;
		this.states = states;
		this.r_tel = r_tel;
		this.remark = remark;
	}
	
	
}
