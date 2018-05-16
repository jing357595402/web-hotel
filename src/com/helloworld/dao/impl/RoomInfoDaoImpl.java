package com.helloworld.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.helloworld.bean.RoomInfo;
import com.helloworld.dao.IRoomInfoDao;
import com.helloworld.db.DBManager;

public class RoomInfoDaoImpl extends DBManager implements IRoomInfoDao {
private ResultSet rs = null;

public int save(RoomInfo roomInfo) {
	String sql = "insert into roominfo (num,r_type_id,states,r_tel,remark)" +
			"values(?,?,?,?,?)";
	Object[] obj = new Object[]{roomInfo.getNum(),roomInfo.getR_type_id(),roomInfo.getStates(),roomInfo.getR_tel(),roomInfo.getRemark()};
	int n = update(sql, obj);
	if(n != 0) {
		System.out.println("保存房间信息成功！");
	} else {
		System.out.println("保存房间信息失败！");
	}
	return n;
}

public int update(RoomInfo roomInfo) {
	String sql = "update roominfo set num = ?, r_type_id = ?, states = ?, r_tel = ?," +
			"remark = ? where pk = ?";
	Object[] obj = new Object[]{roomInfo.getNum(),roomInfo.getR_type_id(),roomInfo.getStates(),roomInfo.getR_tel(),roomInfo.getRemark(),roomInfo.getPk()};
	int n = update(sql, obj);
	if(n > 0) {
		System.out.println("更新房间信息成功！");
	} else {
		System.out.println("更新房间信息失败！");
	}
	return n;
}

public int delete(int pk) {
	String sql = "update roominfo set states = 0 where pk = ?";
	int n = update(sql, new Object[]{pk});
	if(n != 0) {
		System.out.println("更新房间信息成功！");
	} else {
		System.out.println("更新房间信息失败！");
	}
	return n;
}

public RoomInfo findByPk(int pk) {
	RoomInfo roomInfo = null;
	String sql = "select * from roominfo where pk = ?";
	rs = getQuery(sql, new Object[]{pk});
	try {
		if(rs.next()) {
			roomInfo = new  RoomInfo(rs.getInt("pk"), rs.getString("num"), rs.getInt("r_type_id"), rs.getInt("states"), rs.getString("r_tel"), rs.getString("remark"));
		}
	} catch (SQLException e) {
		System.out.println("房间信息查询findByPku失败");
		e.printStackTrace();
	}
	return roomInfo;
}

public List<RoomInfo> findAll() {
	String sql = "select * from roominfo";
	List<RoomInfo> list = new ArrayList<RoomInfo>();
	rs = getQuery(sql, null);
	try {
		while(rs.next()) {
			RoomInfo roomInfo = new RoomInfo(rs.getInt("pk"), rs.getString("num"), rs.getInt("r_type_id"), rs.getInt("states"), rs.getString("r_tel"), rs.getString("remark"));
//			RoomInfo roomInfo = new  RoomInfo(rs.getInt("pk"), rs.getString("num"), rs.getInt("r_type_id"), rs.getInt("states"), rs.getString("r_tel"), rs.getString("remark"));
			list.add(roomInfo);
		}
	} catch (SQLException e) {
		System.out.println("房间信息查询findAll失败！");
		e.printStackTrace();
	}
	return list;
}

}
