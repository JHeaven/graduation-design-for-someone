package com.maheng.service;

import java.util.List;

import com.maheng.model.Duty;
import com.maheng.model.DutyLog;

public interface IDutyService {
	int deleteByPrimaryKey(Integer id);

    int insert(DutyLog record);

    int insertSelective(DutyLog record);

    DutyLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DutyLog record);

    int updateByPrimaryKey(DutyLog record);
    
    List<Duty> getDutyList();
    
    Duty selectDutyNameByPrimaryKey(Integer id);
    
    List<DutyLog> selectById(Integer id);

}
