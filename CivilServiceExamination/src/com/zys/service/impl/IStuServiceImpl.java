package com.zys.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zys.dao.StuMapper;
import com.zys.model.Stu;
import com.zys.service.IStuService;

@Service
public class IStuServiceImpl implements IStuService {

	@Resource
	StuMapper stuMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return stuMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.insert(record);
	}

	@Override
	public int insertSelective(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.insertSelective(record);
	}

	@Override
	public Stu selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return stuMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.updateByPrimaryKey(record);
	}

	@Override
	public Stu login(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.login(record);
	}

	@Override
	public List<Stu> selectAll() {
		// TODO Auto-generated method stub
		return stuMapper.selectAll();
	}

}
