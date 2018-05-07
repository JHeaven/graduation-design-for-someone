package com.lm.service;

import java.util.List;

import com.lm.model.Staff;

public interface IStaffService {
	int deleteByPrimaryKey(Integer id);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Integer id);
    
    Staff login(Staff record);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);
    
    List<Staff> all();

}
