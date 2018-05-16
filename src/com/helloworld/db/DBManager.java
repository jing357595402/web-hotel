package com.helloworld.db;

import java.sql.*;

public class DBManager {

	private Connection conn;
	
	private PreparedStatement ps;
	
	private ResultSet rs;
	
	
	private Connection getConn(){
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=hw", "sa", "123");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	protected void closeAll(){
		try {
			if(null!=rs){
				rs.close();
			}
			if(null!=ps){
				ps.close();
			}
			if(null!=conn){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected ResultSet getQuery(String sql,Object [] obj){
		try {
			ps = getConn().prepareStatement(sql);
			if(null!=obj&&obj.length>0){
				for (int i = 0; i < obj.length; i++) {
					ps.setObject(i+1, obj[i]);
				}
			}
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	protected int update(String sql,Object [] obj){
		int count=0;
		try {
			ps = getConn().prepareStatement(sql);
			if(null!=obj&&obj.length>0){
				for (int i = 0; i < obj.length; i++) {
					ps.setObject(i+1, obj[i]);
				}
			}
			count = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll();
		}
		return count;
	}
	
}
