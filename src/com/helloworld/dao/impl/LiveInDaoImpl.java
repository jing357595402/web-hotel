package com.helloworld.dao.impl;

import java.util.List;

import com.helloworld.bean.LiveIn;
import com.helloworld.dao.ILiveInDao;
import com.helloworld.db.DBManager;

public class LiveInDaoImpl extends DBManager implements ILiveInDao {

	public int save(LiveIn liveIn) {
		String sql = "insert into livein (in_no,r_no,r_type_id,c_type_id,m_id,renshu,in_time,daynum,foregift,chk_no,remark)";
		Object[] obj = new Object[]{liveIn.getIn_no(),liveIn.getR_no(),liveIn.getR_type_id(),liveIn.getC_type_id(),liveIn.getM_id(),
					liveIn.getRenshu(),liveIn.getIn_time(),liveIn.getDaynum(),liveIn.getForegift(),liveIn.getChk_no(),liveIn.getRemark()};
		int n = update(sql, obj);
		if(n != 0) {
			System.out.println("入住信息成功！");
		} else {
			System.out.println("入住信息失败！");
		}
		return n;
	}

	public int update(LiveIn liveIn) {
		// TODO Auto-generated method stub
		return 0;
	}

	public LiveIn findByPk(int pk) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<LiveIn> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
