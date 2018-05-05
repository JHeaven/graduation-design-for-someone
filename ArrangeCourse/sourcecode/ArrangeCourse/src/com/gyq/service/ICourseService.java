package com.gyq.service;

import java.util.List;

import com.gyq.model.Course;

public interface ICourseService {
	int deleteByPrimaryKey(Integer id);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);
    
    List<Course> selectall();

}
