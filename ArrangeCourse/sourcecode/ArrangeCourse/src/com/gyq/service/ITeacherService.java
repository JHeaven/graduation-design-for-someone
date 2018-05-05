package com.gyq.service;

import java.util.List;

import com.gyq.model.Teacher;

public interface ITeacherService {
	int deleteByPrimaryKey(Integer id);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);
    
    List<Teacher>selectall();

}
