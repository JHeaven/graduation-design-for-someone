package com.gyq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyq.dao.ClassMapper;
import com.gyq.model.Class;
import com.gyq.service.IClassService;
@Service
public class ClassServiceImpl implements IClassService {

	@Resource
	ClassMapper classMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return classMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Class record) {
		// TODO Auto-generated method stub
		return classMapper.insert(record);
	}

	@Override
	public int insertSelective(Class record) {
		// TODO Auto-generated method stub
		return classMapper.insertSelective(record);
	}

	@Override
	public Class selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return classMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Class record) {
		// TODO Auto-generated method stub
		return classMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Class record) {
		// TODO Auto-generated method stub
		return classMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Class> selectall() {
		// TODO Auto-generated method stub
		return classMapper.selectall();
	}

}
