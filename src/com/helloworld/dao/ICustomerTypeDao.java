package com.helloworld.dao;

import java.util.List;

import com.helloworld.bean.CustomerType;

public interface ICustomerTypeDao {
	public int save(CustomerType customerType);
	public int delete(int pk);
	public int update(CustomerType customerType);
	public CustomerType findByPk(int pk);
	public List<CustomerType> findAll();
}
