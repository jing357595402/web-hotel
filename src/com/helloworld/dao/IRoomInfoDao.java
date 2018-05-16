package com.helloworld.dao;

import java.util.List;

import com.helloworld.bean.RoomInfo;

public interface IRoomInfoDao {
	public int save(RoomInfo roomInfo);
	public int update(RoomInfo roomInfo);
	public int delete(int pk);
	public RoomInfo findByPk(int pk);
	public List<RoomInfo> findAll();
}
