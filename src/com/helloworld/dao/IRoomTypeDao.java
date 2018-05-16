package com.helloworld.dao;

import java.util.List;

import com.helloworld.bean.RoomType;

public interface IRoomTypeDao {
	public int save(RoomType roomType);
	public int update(RoomType roomType);
	public int delete(int pk);
	public RoomType findByPk(int pk);
	public List<RoomType> findAll();
}
