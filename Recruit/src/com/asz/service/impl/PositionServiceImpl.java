package com.asz.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.asz.dao.PositionMapper;
import com.asz.model.Position;
import com.asz.service.IPositionService;

@Service
public class PositionServiceImpl implements IPositionService {

	
	@Resource
	PositionMapper positionMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return positionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Position record) {
		// TODO Auto-generated method stub
		return positionMapper.insert(record);
	}

	@Override
	public int insertSelective(Position record) {
		// TODO Auto-generated method stub
		return positionMapper.insertSelective(record);
	}

	@Override
	public Position selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return positionMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Position record) {
		// TODO Auto-generated method stub
		return positionMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Position record) {
		// TODO Auto-generated method stub
		return positionMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Position record) {
		// TODO Auto-generated method stub
		return positionMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Position> selectByEnter(Integer userId) {
		// TODO Auto-generated method stub
		return positionMapper.selectByEnter(userId);
	}

	@Override
	public List<Position> selectMohu(String str) {
		// TODO Auto-generated method stub
		return positionMapper.selectMohu("%"+str+"%");
	}

}
