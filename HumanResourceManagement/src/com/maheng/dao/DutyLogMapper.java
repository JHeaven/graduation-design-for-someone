package com.maheng.dao;

import java.util.List;

import com.maheng.model.DutyLog;

public interface DutyLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DutyLog record);

    int insertSelective(DutyLog record);

    DutyLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DutyLog record);

    int updateByPrimaryKey(DutyLog record);
    
    List<DutyLog> selectById(Integer id);
}