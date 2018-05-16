package com.helloworld.dao;

import java.util.ArrayList;
import java.util.List;

import com.helloworld.bean.Engage;

public interface IEngageDao {
	public int save(Engage engage);
	public Engage findByPk(int pk);
	public List<Engage> findAll();
}
