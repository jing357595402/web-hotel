package com.helloworld.dao;

import java.util.List;

import com.helloworld.bean.Pwd;

public interface IPwdDao {
	public int save(Pwd pwd);
	public int delete(int id);
	public int update(Pwd pwd);
	public Pwd findById(int id);
	public List<Pwd> findAll();
	public Pwd findByNameAndPwd(String userid, String pwd);
	
}
