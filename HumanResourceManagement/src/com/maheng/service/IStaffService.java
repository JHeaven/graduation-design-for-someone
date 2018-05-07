package com.maheng.service;

import java.util.List;

import com.maheng.model.Staff;

public interface IStaffService {
	int deleteByPrimaryKey(Integer id);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKeyWithBLOBs(Staff record);

    int updateByPrimaryKey(Staff record);
    
    Staff login(Staff record);
    
    Staff oversfz(String record);

    List<Staff> selectAll();
    
    List<Staff> top5();
    
    
}
