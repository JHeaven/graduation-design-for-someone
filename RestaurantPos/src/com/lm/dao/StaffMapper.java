package com.lm.dao;

import java.util.List;

import com.lm.model.Staff;

public interface StaffMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Integer id);
    
    Staff login(Staff record);
    
    List<Staff> all();

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);
}