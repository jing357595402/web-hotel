package com.helloworld.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.helloworld.bean.Customer;
import com.helloworld.bean.Engage;
import com.helloworld.dao.IEngageDao;
import com.helloworld.db.DBManager;


public class EngageDaoImpl extends DBManager implements IEngageDao {

	private ResultSet rs = null;
	
	public int save(Engage engage) {
		String sql = "insert into hotel_engage (c_type_id, m_id, r_type_id, r_no, eng_time, remark)" +
				"values(?,?,?,?,?,?)";
		Object[] obj = new Object[]{engage.getC_type_id(),engage.getM_id(),engage.getR_type_id(),engage.getR_no(),engage.getEng_time(),engage.getRemark()};
		int n = update(sql,obj);
		if(n != 0){
			System.out.println("订单保存成功！");
		} else {
			System.out.println("订单保存失败！");
		}
		return n;
	}

	public Engage findByPk(int pk) {
		String sql = "select * from hotel_engage where pk = ?";
		Engage engage = null;
		rs = getQuery(sql, new Object[]{pk});
		try {
			if(rs.next()) {
				engage = new Engage(rs.getInt("c_type_id"), rs.getString("m_id"), rs.getInt("r_type_id"), rs.getString("r_no"), rs.getString("eng_time"), rs.getString("remark"));
				System.out.println("订单查询findByPk成功！");
			}
		} catch (SQLException e) {
			System.out.println("订单查询findByPk失败！");
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return engage;
	}

	public List<Engage> findAll() {
		String sql = "select * from hotel_engage";
		List<Engage> list = new ArrayList<Engage>();
		rs = getQuery(sql, null);
		try {
			if(rs.next()) {
				Engage engage = new Engage(rs.getInt("c_type_id"), rs.getString("m_id"), rs.getInt("r_type_id"), rs.getString("r_no"), rs.getString("eng_time"), rs.getString("remark"));
				list.add(engage);
				System.out.println("订单查询findAll成功！");
			}
		} catch (SQLException e) {
			System.out.println("订单查询findAll失败！");
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return list;
	}

}
