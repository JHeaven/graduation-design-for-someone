package com.maheng.dao;

import java.util.List;

import com.maheng.model.DepLog;

public interface DepLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DepLog record);

    int insertSelective(DepLog record);

    DepLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DepLog record);

    int updateByPrimaryKey(DepLog record);
    
    List<DepLog> selectById(Integer id);
}