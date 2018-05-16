package com.helloworld.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.helloworld.bean.RoomType;
import com.helloworld.dao.IRoomTypeDao;
import com.helloworld.db.DBManager;

public class RoomTypeDaoImpl extends DBManager implements IRoomTypeDao {

	private ResultSet rs = null;
	
	public int save(RoomType roomType) {
		String sql = "insert into hotel_roomtype (id,roomtype,bed,price,foregift,cl_room,cl_price,remark)" +
				"values(?,?,?,?,?,?,?,?)";
		Object[] obj = new Object[]{roomType.getId(),roomType.getRoomType(),roomType.getBed(),roomType.getPrice(),
					roomType.getForegift(),roomType.getCl_room(),roomType.getCl_price(),roomType.getRemark()};
		int n = update(sql,obj);
		if(n != 0){
			System.out.println("房间类型保存成功！");
		} else {
			System.out.println("房间类型保存失败！");
		}
		return n;
	}

	public int update(RoomType roomType) {
		String sql = "update hotel_roomtype set id = ?, roomtype = ?, bed = ?, price = ?," +
				"foregift = ?,cl_room = ?, cl_price = ?, remark = ? where pk = ?";
		Object[] obj = new Object[]{roomType.getId(),roomType.getRoomType(),roomType.getBed(),roomType.getPrice(),
				roomType.getForegift(),roomType.getCl_room(),roomType.getCl_price(),roomType.getRemark(),roomType.getPk()};
		int n = update(sql,obj);
		if(n != 0){
			System.out.println("房间类型更新成功！");
		} else {
			System.out.println("房间类型更新失败！");
		}
		return n;
	}

	public int delete(int pk) {
		String sql = "delete from hotel_roomtype where pk = ?";
		int n = update(sql,new Object[]{pk});
		if(n != 0){
			System.out.println("房间类型删除成功！");
		} else {
			System.out.println("房间类型删除失败！");
		}
		return n;
	}

	public RoomType findByPk(int pk) {
		String sql = "select * from hotel_roomtype where pk = ?";
		rs = getQuery(sql,new Object[]{pk});
		RoomType roomType = null;
		try {
			if(rs.next()) {
				roomType = new RoomType(rs.getInt("pk"), rs.getInt("id"), rs.getString("roomType"), rs.getInt("bed"), rs.getFloat("price"), rs.getFloat("foregift"), rs.getString("cl_room"),rs.getFloat("cl_price"), rs.getString("remark"));
			} 
		} catch (SQLException e) {
			System.out.println("房间类型findByPK失败！");
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return roomType;
	}

	public List<RoomType> findAll() {
		List<RoomType> list = new ArrayList<RoomType>();
		String sql = "select * from hotel_roomtype";
		rs = getQuery(sql,null);
		try {
			while(rs.next()) {
				RoomType roomType = new RoomType(rs.getInt("pk"), rs.getInt("id"), rs.getString("roomType"), rs.getInt("bed"), rs.getFloat("price"), rs.getFloat("foregift"), rs.getString("cl_room"),rs.getFloat("cl_price"), rs.getString("remark"));
				list.add(roomType);
			}
		} catch (SQLException e) {
			System.out.println("房间类型findAll失败！");
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return list;
	}
}
