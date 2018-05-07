package com.zys.dao;

import java.util.List;

import com.zys.model.Stu;

public interface StuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Stu record);

    int insertSelective(Stu record);

    Stu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Stu record);

    int updateByPrimaryKeyWithBLOBs(Stu record);

    int updateByPrimaryKey(Stu record);
    
    Stu login(Stu record);
    
    List<Stu> selectAll();
}