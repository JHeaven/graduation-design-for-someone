package com.gyq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyq.dao.RoomMapper;
import com.gyq.model.Room;
import com.gyq.service.IRoomService;

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
	public int insert(Room record) {
		// TODO Auto-generated method stub
		return roomMapper.insert(record);
	}

	@Override
	public int insertSelective(Room record) {
		// TODO Auto-generated method stub
		return roomMapper.insertSelective(record);
	}

	@Override
	public Room selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return roomMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Room record) {
		// TODO Auto-generated method stub
		return roomMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Room record) {
		// TODO Auto-generated method stub
		return roomMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Room> selectALL() {
		// TODO Auto-generated method stub
		return roomMapper.selectALL();
	}

}
