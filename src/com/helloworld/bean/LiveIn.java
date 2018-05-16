package com.helloworld.bean;

public class LiveIn {
	private int pk;
	private int in_no;
	private String r_no;
	private int r_type_id;
	private int c_type_id;
	private String m_id;
	private int renshu;
	private String in_time;
	private int daynum;
	private float foregift;
	private String chk_no;
	private String remark;
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public int getIn_no() {
		return in_no;
	}
	public void setIn_no(int in_no) {
		this.in_no = in_no;
	}
	public String getR_no() {
		return r_no;
	}
	public void setR_no(String r_no) {
		this.r_no = r_no;
	}
	public int getR_type_id() {
		return r_type_id;
	}
	public void setR_type_id(int r_type_id) {
		this.r_type_id = r_type_id;
	}
	public int getC_type_id() {
		return c_type_id;
	}
	public void setC_type_id(int c_type_id) {
		this.c_type_id = c_type_id;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getRenshu() {
		return renshu;
	}
	public void setRenshu(int renshu) {
		this.renshu = renshu;
	}
	public String getIn_time() {
		return in_time;
	}
	public void setIn_time(String in_time) {
		this.in_time = in_time;
	}
	public int getDaynum() {
		return daynum;
	}
	public void setDaynum(int daynum) {
		this.daynum = daynum;
	}
	public float getForegift() {
		return foregift;
	}
	public void setForegift(float foregift) {
		this.foregift = foregift;
	}
	public String getChk_no() {
		return chk_no;
	}
	public void setChk_no(String chk_no) {
		this.chk_no = chk_no;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public LiveIn(int in_no, String r_no, int r_type_id, int c_type_id,
			String m_id, int renshu, String in_time, int daynum,
			float foregift, String chk_no, String remark) {
		super();
		this.in_no = in_no;
		this.r_no = r_no;
		this.r_type_id = r_type_id;
		this.c_type_id = c_type_id;
		this.m_id = m_id;
		this.renshu = renshu;
		this.in_time = in_time;
		this.daynum = daynum;
		this.foregift = foregift;
		this.chk_no = chk_no;
		this.remark = remark;
	}
	public LiveIn() {
		super();
	}
	
}
