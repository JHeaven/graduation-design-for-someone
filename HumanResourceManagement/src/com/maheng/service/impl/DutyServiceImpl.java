package com.maheng.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.maheng.dao.DutyLogMapper;
import com.maheng.dao.DutyMapper;
import com.maheng.model.Duty;
import com.maheng.model.DutyLog;
import com.maheng.service.IDutyService;

@Service
public class DutyServiceImpl implements IDutyService {

	@Resource
	DutyLogMapper dutyLogMapper = null;
	@Resource
	DutyMapper dutyMapper = null;
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return dutyLogMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(DutyLog record) {
		// TODO Auto-generated method stub
		return dutyLogMapper.insert(record);
	}

	@Override
	public int insertSelective(DutyLog record) {
		// TODO Auto-generated method stub
		return dutyLogMapper.insertSelective(record);
	}

	@Override
	public DutyLog selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return dutyLogMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(DutyLog record) {
		// TODO Auto-generated method stub
		return dutyLogMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(DutyLog record) {
		// TODO Auto-generated method stub
		return dutyLogMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Duty> getDutyList() {
		// TODO Auto-generated method stub
		return dutyMapper.selectAll();
	}

	@Override
	public Duty selectDutyNameByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return dutyMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<DutyLog> selectById(Integer id) {
		// TODO Auto-generated method stub
		return dutyLogMapper.selectById(id);
	}

}
