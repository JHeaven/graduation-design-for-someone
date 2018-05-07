package com.xjd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xjd.dao.RoomMapper;
import com.xjd.model.Room;
import com.xjd.model.RoomWithBLOBs;
import com.xjd.service.IRoomService;


@Service
public class RoomServiceImpl implements IRoomService {

	@Resource
	RoomMapper roomMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return roomMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(RoomWithBLOBs record) {
		// TODO Auto-generated method stub
		return roomMapper.insert(record);
	}

	@Override
	public int insertSelective(RoomWithBLOBs record) {
		// TODO Auto-generated method stub
		return roomMapper.insertSelective(record);
	}

	@Override
	public RoomWithBLOBs selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return roomMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(RoomWithBLOBs record) {
		// TODO Auto-generated method stub
		return roomMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(RoomWithBLOBs record) {
		// TODO Auto-generated method stub
		return roomMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Room record) {
		// TODO Auto-generated method stub
		return roomMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<RoomWithBLOBs> all() {
		// TODO Auto-generated method stub
		return roomMapper.all();
	}

}
