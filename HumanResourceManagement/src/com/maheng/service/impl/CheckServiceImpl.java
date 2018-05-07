package com.maheng.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.maheng.dao.CheckMapper;
import com.maheng.model.Check;
import com.maheng.service.ICheckService;

@Service
public class CheckServiceImpl implements ICheckService {

	@Resource
	CheckMapper checkMapper = null;
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return checkMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Check record) {
		// TODO Auto-generated method stub
		return checkMapper.insert(record);
	}

	@Override
	public int insertSelective(Check record) {
		// TODO Auto-generated method stub
		return checkMapper.insertSelective(record);
	}

	@Override
	public Check selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return checkMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Check record) {
		// TODO Auto-generated method stub
		return checkMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Check record) {
		return checkMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Check> selectAllofIng() {
		// TODO Auto-generated method stub
		return checkMapper.selectAllofIng();
	}

}
