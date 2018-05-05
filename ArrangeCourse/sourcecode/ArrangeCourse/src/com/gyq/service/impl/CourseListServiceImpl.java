package com.gyq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyq.dao.CourseListMapper;
import com.gyq.model.CourseList;
import com.gyq.service.ICourseListService;
@Service
public class CourseListServiceImpl implements ICourseListService {

	@Resource
	CourseListMapper courseListMappe;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return courseListMappe.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(CourseList record) {
		// TODO Auto-generated method stub
		return courseListMappe.insert(record);
	}

	@Override
	public int insertSelective(CourseList record) {
		// TODO Auto-generated method stub
		return courseListMappe.insertSelective(record);
	}

	@Override
	public CourseList selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return courseListMappe.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(CourseList record) {
		// TODO Auto-generated method stub
		return courseListMappe.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(CourseList record) {
		// TODO Auto-generated method stub
		return courseListMappe.updateByPrimaryKey(record);
	}

	@Override
	public List<CourseList> selectall() {
		// TODO Auto-generated method stub
		return courseListMappe.selectall();
	}

}
