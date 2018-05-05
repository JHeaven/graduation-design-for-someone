package com.gyq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyq.dao.CourseMapper;
import com.gyq.model.Course;
import com.gyq.service.ICourseService;
@Service
public class CourseServiceImpl implements ICourseService {

	@Resource
	CourseMapper courseMappe;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return courseMappe.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Course record) {
		// TODO Auto-generated method stub
		return courseMappe.insert(record);
	}

	@Override
	public int insertSelective(Course record) {
		// TODO Auto-generated method stub
		return courseMappe.insertSelective(record);
	}

	@Override
	public Course selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return courseMappe.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Course record) {
		// TODO Auto-generated method stub
		return courseMappe.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Course record) {
		// TODO Auto-generated method stub
		return courseMappe.updateByPrimaryKey(record);
	}

	@Override
	public List<Course> selectall() {
		// TODO Auto-generated method stub
		return courseMappe.selectall();
	}
	
}
