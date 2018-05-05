package com.gyq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyq.dao.TeacherMapper;
import com.gyq.model.Teacher;
import com.gyq.service.ITeacherService;

@Service
public class TeacherServiceImpl implements ITeacherService {

	
	@Resource
	TeacherMapper teacherMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return teacherMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Teacher record) {
		// TODO Auto-generated method stub
		return teacherMapper.insert(record);
	}

	@Override
	public int insertSelective(Teacher record) {
		// TODO Auto-generated method stub
		return teacherMapper.insertSelective(record);
	}

	@Override
	public Teacher selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return teacherMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Teacher record) {
		// TODO Auto-generated method stub
		return teacherMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Teacher record) {
		// TODO Auto-generated method stub
		return teacherMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Teacher> selectall() {
		// TODO Auto-generated method stub
		return teacherMapper.selectall();
	}

}
