package com.helloworld.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.helloworld.bean.CustomerType;
import com.helloworld.dao.ICustomerTypeDao;
import com.helloworld.db.DBManager;

public class CustomTypeDaoImpl extends DBManager implements ICustomerTypeDao{

	private ResultSet rs = null;
	
	public int save(CustomerType customerType) {
		String sql = "insert into customertype (id,c_type,discount,remark)" +
				"values(?,?,?,?)";
		Object[] obj = new Object[]{customerType.getId(),customerType.getC_type(),customerType.getDiscount(),customerType.getRemark()};
		int n = update(sql,obj);
		if(n != 0){
			System.out.println("客户类型保存成功！");
		} else {
			System.out.println("客户类型保存失败！");
		}
		return n;
		
	}

	public int delete(int pk) {
		String sql = "delete from customertype where pk = ?";
		int n = update(sql,new Object[]{pk});
		if(n != 0){
			System.out.println("客户类型删除成功！");
		} else {
			System.out.println("客户类型删除失败！");
		}
		return n;
	}

	public int update(CustomerType customerType) {
		String sql = "update customertype set id = ?, c_type = ?, discount = ?, remark = ? where pk = ?";
		Object[] obj = new Object[]{customerType.getId(),customerType.getC_type(),customerType.getDiscount(),customerType.getRemark()};
		int n = update(sql,obj);
		if(n != 0){
			System.out.println("客户类型保存成功！");
		} else {
			System.out.println("客户类型保存失败！");
		}
		return n;
	}

	public CustomerType findByPk(int pk) {
		String sql = "select * from customertype where pk = ?";
		CustomerType customerType = null;
		rs = getQuery(sql, new Object[]{pk});
		try {
			if(rs.next()) {
				customerType = new CustomerType(rs.getInt("id"), rs.getString("c_type"), rs.getInt("discount"), rs.getString("remark"));
				System.out.println("客户类型查询findByPk成功！");
			}
		} catch (SQLException e) {
			System.out.println("客户类型查询findByPk失败！");
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return customerType;
	}

	public List<CustomerType> findAll() {
		String sql = "select * from customertype";
		List<CustomerType> list = new ArrayList<CustomerType>();
		rs = getQuery(sql,null);
		try {
			if(rs.next()) {
				CustomerType customerType = new CustomerType(rs.getInt("id"), rs.getString("c_type"), rs.getInt("discount"), rs.getString("remark"));
				list.add(customerType);
				System.out.println("客户类型查询findAll成功！");
			}
		} catch (SQLException e) {
			System.out.println("客户类型查询findAll失败！");
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return list;
	}
	
}
