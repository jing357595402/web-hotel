package com.helloworld.bean;

public class Pwd {
	private int pk;
	private String userid;
	private String pwd;
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Pwd() {
		super();
	}
	public Pwd(String userid, String pwd) {
		super();
		this.userid = userid;
		this.pwd = pwd;
	}
	public Pwd(int pk, String userid, String pwd) {
		super();
		this.pk = pk;
		this.userid = userid;
		this.pwd = pwd;
	}
	
}
