package com.sd.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sd.dao.HomeMapper;
import com.sd.model.Home;
import com.sd.service.IHomeService;
import com.sun.xml.internal.ws.developer.Serialization;
@Service
public class HomeServiceImpl implements IHomeService{

	@Resource
	HomeMapper homeMapper;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return homeMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Home record) {
		// TODO Auto-generated method stub
		return homeMapper.insert(record);
	}

	@Override
	public int insertSelective(Home record) {
		// TODO Auto-generated method stub
		return homeMapper.insertSelective(record);
	}

	@Override
	public Home selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return homeMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Home record) {
		// TODO Auto-generated method stub
		return homeMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Home record) {
		// TODO Auto-generated method stub
		return homeMapper.updateByPrimaryKey(record);
	}

}
