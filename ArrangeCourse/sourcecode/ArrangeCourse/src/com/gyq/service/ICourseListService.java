package com.gyq.service;

import java.util.List;

import com.gyq.model.CourseList;

public interface ICourseListService {
	int deleteByPrimaryKey(Integer id);

    int insert(CourseList record);

    int insertSelective(CourseList record);

    CourseList selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CourseList record);

    int updateByPrimaryKey(CourseList record);
    
    List<CourseList> selectall();

}
