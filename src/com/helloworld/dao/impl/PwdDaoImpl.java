package com.helloworld.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.helloworld.bean.Pwd;
import com.helloworld.dao.IPwdDao;
import com.helloworld.db.DBManager;
import com.sun.org.apache.regexp.internal.recompile;

public class PwdDaoImpl extends DBManager implements IPwdDao {
	private ResultSet rs;

	public int  delete(int id) {
		String sql = "delete  from pwd where pk= ?";
		Object[] obj = {id};
		int i = update(sql, obj);
		if(i>0) {
			System.out.println("删除用户成功");
		} else {
			System.out.println("删除用户失败");
		}
		return i;
	}

	public List<Pwd> findAll() {
		String sql = "select * from pwd";
		rs= getQuery(sql, null);
		List<Pwd> lst = new ArrayList<Pwd>();
		try {
			while(rs.next()) {
				Pwd pwd = new Pwd(rs.getInt("pk"), rs.getString("userid"), rs.getString("pwd"));
				lst.add(pwd);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	public Pwd findById(int id) {
		String sql = "select * from Pwd where pk = ?" ;
		rs = getQuery(sql, new Object[] {id});
		Pwd pwd = null;
		try {
			while(rs.next()) {
				pwd = new Pwd(rs.getInt("pk"), rs.getString("userid"), rs.getString("pwd"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pwd;
	}

	public Pwd findByNameAndPwd(String userid, String password) {
		String sql = "select pk from pwd  where userid = '" + userid + "' and pwd = '" + password + "'";
		System.out.println(sql);
		Pwd pwd2 = null;
		rs = getQuery(sql, null);
		try {
			if(rs.next()) {
				pwd2 = new Pwd(rs.getInt("pk"), userid, password);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			closeAll();
		}
		return pwd2;
	}

	public int save(Pwd pwd) {
		String sql = "insert into pwd(userid,pwd) values ('"+ pwd.getUserid()+"','"+ pwd.getPwd() +"')";
		int a = -1;
		a = update(sql, null);
		if(a>0) {
			System.out.println("添加用户成功");
		} else {
			System.out.println("添加用户失败");
		}
		return a;
	}

	public int update(Pwd pwd) {
		String sql = "update pwd set userid = ?,pwd = ? where pk = ?";
		System.out.println(sql);
		Object obj[] = new Object[] {pwd.getUserid(), pwd.getPwd(), pwd.getPk()};
		int i = update(sql, obj);
		if(i > 0) {
			System.out.println("修改用户成功");
		} else {
			System.out.println("修改用户失败");
		}
		return i;
	}
	
}
