package com.gyq.dao;

import java.util.List;

import com.gyq.model.Class;

public interface ClassMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Class record);

    int insertSelective(Class record);

    Class selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Class record);

    int updateByPrimaryKey(Class record);
    
    List<Class> selectall();
}