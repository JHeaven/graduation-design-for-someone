package com.sd.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sd.dao.DoctorMapper;
import com.sd.model.Doctor;
import com.sd.service.IDoctorService;

@Service
public class DoctorServiceImpl implements IDoctorService {
	
	@Resource
	DoctorMapper doctorMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return doctorMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Doctor record) {
		// TODO Auto-generated method stub
		return doctorMapper.insert(record);
	}

	@Override
	public int insertSelective(Doctor record) {
		// TODO Auto-generated method stub
		return doctorMapper.insertSelective(record);
	}

	@Override
	public Doctor selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return doctorMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Doctor record) {
		// TODO Auto-generated method stub
		return doctorMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Doctor record) {
		// TODO Auto-generated method stub
		return doctorMapper.updateByPrimaryKey(record);
	}

}
