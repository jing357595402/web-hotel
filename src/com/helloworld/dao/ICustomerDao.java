package com.helloworld.dao;

import java.util.List;

import com.helloworld.bean.Customer;

public interface ICustomerDao {
	public int save(Customer customer);
	
	public int delete(int pk);
	
	public int update(Customer customer);
	
	public Customer findByPk(int pk);
	
	public List<Customer> findAll();
}
