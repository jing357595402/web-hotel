package com.helloworld.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.helloworld.bean.Customer;
import com.helloworld.dao.ICustomerDao;
import com.helloworld.db.DBManager;

public class CustomerDaoImpl extends DBManager implements ICustomerDao {

	private ResultSet rs = null;
	
	public int save(Customer customer) {
		String sql = "insert into hotel_customer (c_type_id, m_id, m_name, sex, zj_no, m_tel, remark)" +
				"values(?,?,?,?,?,?,?)";
		Object[] obj = new Object[]{customer.getC_type_id(),customer.getM_id(),customer.getM_name(),customer.getSex(),customer.getZj_no(),customer.getM_tel(),customer.getRemark()};
		int n = update(sql,obj);
		if(n != 0){
			System.out.println("客户保存成功！");
		} else {
			System.out.println("客户保存失败！");
		}
		return n;
	}

	public int delete(int pk) {
		String sql = "delete from hotel_customer where pk = ?";
		int n = update(sql,new Object[]{pk});
		if(n != 0){
			System.out.println("客户删除保存成功！");
		} else {
			System.out.println("客户删除保存失败！");
		}
		return n;
	}

	public int update(Customer customer) {
		String sql = "update hotel_customer set c_type_id = ?, m_id = ?, m_name = ?, sex = ?, " +
				"zj_no = ?, m_tel = ?, remark = ? where pk = ?";
		Object[] obj = new Object[]{customer.getC_type_id(),customer.getM_id(),customer.getM_name(),customer.getSex(),customer.getZj_no(),customer.getM_tel(),customer.getRemark(),customer.getPk()};
		int n = update(sql,obj);
		if(n != 0){
			System.out.println("客户更新保存成功！");
		} else {
			System.out.println("客户更新保存失败！");
		}
		return n;
	}

	public Customer findByPk(int pk) {
		String sql = "select * from hotel_customer where pk = ?";
		Customer customer = null;
		rs = getQuery(sql, new Object[]{pk});
		try {
			if(rs.next()) {
				customer = new Customer(rs.getInt("pk"), rs.getInt("c_type_id"), rs.getString("m_id"), rs.getString("m_name"), rs.getString("sex"), rs.getString("zj_no"), rs.getString("m_tel"), rs.getString("remark"));
				System.out.println("客户查询findByPk成功！");
			}
		} catch (SQLException e) {
			System.out.println("客户查询findByPk失败！");
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return customer;
	}

	public List<Customer> findAll() {
		String sql = "select * from hotel_customer";
		List<Customer> list = new ArrayList<Customer>();
		rs = getQuery(sql, null);
		try {
			while(rs.next()) {
				Customer customer = new Customer(rs.getInt("pk"), rs.getInt("c_type_id"), rs.getString("m_id"), rs.getString("m_name"), rs.getString("sex"), rs.getString("zj_no"), rs.getString("m_tel"), rs.getString("remark"));
				list.add(customer);
				System.out.println("客户查询findAll成功！");
			}
		} catch (SQLException e) {
			System.out.println("客户查询findAll失败！");
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return list;
	}

}
