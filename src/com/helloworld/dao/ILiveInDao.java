package com.helloworld.dao;

import java.util.List;

import com.helloworld.bean.LiveIn;
public interface ILiveInDao {
	public int save(LiveIn liveIn);

	public int update(LiveIn liveIn);
	
	public LiveIn findByPk(int pk);
	
	public List<LiveIn> findAll();
}
