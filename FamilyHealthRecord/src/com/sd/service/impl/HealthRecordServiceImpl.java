package com.sd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sd.dao.HealthRecordMapper;
import com.sd.model.HealthRecord;
import com.sd.service.IHealthRecordService;

@Service
public class HealthRecordServiceImpl implements IHealthRecordService {

	@Resource
	HealthRecordMapper healthRecordMapper = null;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return healthRecordMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(HealthRecord record) {
		// TODO Auto-generated method stub
		return healthRecordMapper.insert(record);
	}

	@Override
	public int insertSelective(HealthRecord record) {
		// TODO Auto-generated method stub
		return healthRecordMapper.insertSelective(record);
	}

	@Override
	public HealthRecord selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return healthRecordMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(HealthRecord record) {
		// TODO Auto-generated method stub
		return healthRecordMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(HealthRecord record) {
		// TODO Auto-generated method stub
		return healthRecordMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<HealthRecord> selectByUser(Integer id) {
		// TODO Auto-generated method stub
		return healthRecordMapper.selectByUser(id);
	}

}
