package com.helloworld.bean;

public class CheckOut {
	private int pk;
	private int chk_no;
	private int in_no;
	private int daynum;
	private float money;
	private String chk_time;
	private String remark;
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public int getChk_no() {
		return chk_no;
	}
	public void setChk_no(int chk_no) {
		this.chk_no = chk_no;
	}
	public int getIn_no() {
		return in_no;
	}
	public void setIn_no(int in_no) {
		this.in_no = in_no;
	}
	public int getDaynum() {
		return daynum;
	}
	public void setDaynum(int daynum) {
		this.daynum = daynum;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public String getChk_time() {
		return chk_time;
	}
	public void setChk_time(String chk_time) {
		this.chk_time = chk_time;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public CheckOut(int chk_no, int in_no, int daynum, float money,
			String chk_time, String remark) {
		super();
		this.chk_no = chk_no;
		this.in_no = in_no;
		this.daynum = daynum;
		this.money = money;
		this.chk_time = chk_time;
		this.remark = remark;
	}
	public CheckOut() {
		super();
	}
	
}
